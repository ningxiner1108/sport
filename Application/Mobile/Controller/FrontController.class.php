<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Mobile\Controller;
use User\Api\UserApi;
use Think\Log;
/**
 * 前台首页控制器
 * 主要获取首页聚合数据
 */
class FrontController extends MobileController {

    public function login(){
        if($_POST){
            header("Content-type: text/html; charset=utf-8");
            $username = I("username");
            $password = I("password");

            if(empty($username) || empty($password)){
                $this->error("用户名或密码不能为空");
            }
            /* 调用UC登录接口登录 */

            /* 获取用户数据 */
            $user = D("ucenterMember")->where(array("username"=>$username))->find();

            $uid = 0;
            if(is_array($user) && $user['status']){
                /* 验证用户密码 */

                /*echo($this->think_ucenter_md5($password, UC_AUTH_KEY).'<br/>');
                print_r($user['password']);
                exit();*/
                if($this->think_ucenter_md5($password, UC_AUTH_KEY) === $user['password']){

                    $uid = $user['id']; //登录成功，返回用户ID
                    //D("ucenterMember")->updateLogin($uid); //更新用户登录信息
                    $data = array(
                        'id'              => $uid,
                        'last_login_time' => NOW_TIME,
                        'last_login_ip'   => get_client_ip(1),
                    );
                    D("ucenterMember")->save($data);
                }
            }

            if(0 < $uid){ //UC登录成功
                /* 登录用户 */
                $Member = D('Member');
                if($Member->login($uid)){ //登录用户
                    //TODO:跳转到登录前页面
                    $this->success('登录成功！', U('Front/index'));
                } else {
                    $this->error($Member->getError());
                }

            } else { //登录失败
                switch($uid) {
                    case -1: $error = '用户不存在或被禁用！'; break; //系统级别禁用
                    case -2: $error = '密码错误！'; break;
                    default: $error = '未知错误！'; break; // 0-接口参数错误（调试阶段使用）
                }
                $this->error($error);
            }
        }else{
            $this->display();
        }
    }

	//核销页面
    public function index(){
        is_login() || $this->error('您还没有登录，请先登录！', U('Front/login'));

        $gid = 1;//默认体育场馆ID
        $sportHallList = D("sportHall")->getList($gid);//获取场馆列表

        $guestModel = D("guestTicket");
        foreach($sportHallList as &$v){
            $guestticket      = $guestModel->getList($v['id']);//获取散票
            foreach($guestticket as &$vv){
                $vv['datezone'] = $this->getDateZone($vv['timetype'],$vv['date_s'],$vv['date_e']);
                $vv['timezone'] = $this->getTimeZone($vv['timezone_s'],$vv['timezone_e']);
            }
            $v['guestticket'] = $guestticket;
        }
        $this->assign('sportHallList',$sportHallList);
        //print_r($sportHallList);


        D("Order")->udpateOrderStatus();//更新订单和片区的状态

        $date = $this->getWeekAndDate(14);//获取两周的时间
        $this->assign("datelist",$date);

        $shid      = 1;
        if(I("shid")){
            $shid = I("shid");
        }
        $stids     = D("spaceType")->getList($shid);
        $spacetid  = $stids[0]['id'];
        $sportHall = M("sportHall")->find($stids[0]['shid']);
        $this->assign('shid',$shid);
        $this->assign('sportHall',$sportHall);
        $timezone  = $this->getOpenZone($sportHall['openzone']);
        $times     = $this->getTimes($timezone[0],$timezone[1]);
        $this->assign("times",$times);
        $placelist = D("place")->getList($spacetid);
        $this->assign("spacetid",$spacetid);
        $this->assign("placelist",$placelist);

        $datalist = $this->getOrderStatus($placelist,$times,'',0,'front');
        $this->assign("datalist",$datalist);

        $this->display();
    }

    /**
     * s通过ajax获取指定日期的场地信息
     */
    public function getAreaStatusByAjax(){
        $date      = I("date");
        $oid       = I("oid");
        $spacetid  = I("spacetid");
        $shid      = I("shid");
        $sportHall = M("sportHall")->find($shid);
        $timezone  = $this->getOpenZone($sportHall['openzone']);
        $times     = $this->getTimes($timezone[0],$timezone[1]);
        $placelist = D("place")->getList($spacetid);
        $result    = $this->getOrderStatus($placelist,$times,$date,$oid);

        echo(json_encode($result));
    }

    /**
     * s前台根据手机号匹配用户信息并自动补全
     */
    public function queryUserinfo(){
        $phone = I("query");
        if($phone){
            $userinfo = D("userinfo")->searchByPhone($phone);
            if(is_array($userinfo)){
                $suggestions = array();
                $i = 0;
                foreach($userinfo as $v){
                    $suggestions[$i]['value'] = $v['phone'];
                    $suggestions[$i]['data']  = $v['id'];
                    $i++;
                }
                $result['query'] = 'unit';
                $result['suggestions'] = $suggestions;
            }else{
                $result = array();
            }
        }else{
            $result = array();
        }
        echo(json_encode($result));
    }

    /**
     * S前台ajax方式根据uid获取用户和订单信息
     */
    public function queryUserAndOrder(){
        $uid  = I("uid");
        $stid = I("stid");
        if($uid > 0 && $stid > 0){
            $userinfo  = D("userinfo")->findByUserId($uid);
            $orderinfo = D("order")->getOrderByUserId($uid, $stid);

            $model     = D("orderPlace");
            $orderlist = array();
            $i         = 0;
            foreach($orderinfo as $v){
                $timeTmp = explode('--',$v['timeinfo']);
                $tmpDate = str_replace('月','-',$v['dateinfo']);
                $tmpDate = str_replace('日','',$tmpDate);
                $timeEnd = strtotime($v['yearinfo'].'-'.$tmpDate.' '.$timeTmp[1].':00');
                if(time() < $timeEnd){
                    $orderPlace = array();
                    $orderPlace = $model->getOrderPlaceByOid($v['id']);
                    $orderlist[$i]['id']         = $v['id'];
                    $orderlist[$i]['number']     = $v['number'];
                    $orderlist[$i]['icon']       = $v['icon'];
                    $orderlist[$i]['weekinfo']   = $v['weekinfo'];
                    $orderlist[$i]['dateinfo']   = $v['dateinfo'];
                    $orderlist[$i]['timeinfo']   = $v['timeinfo'];
                    $orderlist[$i]['hourinfo']   = $v['hourinfo'];
                    $orderlist[$i]['amount']     = $v['amount'];
                    $orderlist[$i]['path']       = $v['path'];
                    $orderlist[$i]['orderPlace']  = $orderPlace;
                    $orderlist[$i]['timeend']    = $timeEnd;

                    $rating_id[$i] = $v['id'];
                    $rating_time[$i] = $timeEnd;

                    $i++;
                }
            }
            array_multisort($rating_time,$rating_id,$orderlist);

            $where['stid']   = $stid;
            $where['uid']    = $uid;
            $where['isused'] = 0;
            $ticketlist = M("orderTicketList")->where($where)->order("id desc")->select();
            $ticketModel = M("guestTicket");
            foreach($ticketlist as &$v){
                $v['count']    = $v['count'] - $v['usenum'];
                $ticketinfo    = $ticketModel->find($v['gtid']);
                $v['datezone'] = $this->getDateZone($ticketinfo['timetype'],$ticketinfo['date_s'],$ticketinfo['date_e']);
                $v['timezone'] = $this->getTimeZone($ticketinfo['timezone_s'],$ticketinfo['timezone_e']);
                $v['tag']      = $ticketinfo['tag'];
            }


            $data['userinfo']   = $userinfo;
            $data['placelist']  = $orderlist;
            $data['ticketlist'] = $ticketlist;
            $result['status'] = 200;
            $result['data']   = $data;
        }else{
            $result['status'] = 201;
            $result['msg']    = '用户ID或场地ID不能为空';
        }
        echo(json_encode($result));
    }


    /**
     * S前台ajax方式根据订单编号获取用户和订单信息
     */
    public function queryOrderByNumber(){
        $number = I("number");
        $stid   = I("stid");
        if(!empty($number) && $stid > 0){
            if(strlen($number) == 11){//表明是电话号码，先查询用户表
                $userinfo  = D("userinfo")->findByPhone($number);
                $orderinfo = D("order")->getOrderByUserId($userinfo[0]['id'], $stid);
            }else{//订单编号
                $order     = D("order")->getPayedOrderByNumber($number);
                $userinfo  = D("userinfo")->findByUserId($order['uid']);
                $orderinfo = D("order")->getOrderByUserId($order['uid'], $stid);
            }

            //查询场地订单 start
            $model     = D("orderPlace");
            $orderlist = array();
            $i         = 0;
            foreach($orderinfo as $v){
                $orderPlace = array();
                $orderPlace = $model->getOrderPlaceByOid($v['id']);
                $orderlist[$i]['id']         = $v['id'];
                $orderlist[$i]['number']     = $v['number'];
                $orderlist[$i]['icon']       = $v['icon'];
                $orderlist[$i]['weekinfo']   = $v['weekinfo'];
                $orderlist[$i]['dateinfo']   = $v['dateinfo'];
                $orderlist[$i]['timeinfo']   = $v['timeinfo'];
                $orderlist[$i]['hourinfo']   = $v['hourinfo'];
                $orderlist[$i]['amount']     = $v['amount'];
                $orderlist[$i]['path']       = $v['path'];
                $orderlist[$i]['orderPlace']  = $orderPlace;
                $i++;
            }
            //查询场地订单 end

            //查询散票订单 start
            $where['stid']   = $stid;
            $where['uid']    = $userinfo['id'];
            $where['isused'] = 0;
            $ticketlist = M("orderTicketList")->where($where)->order("id desc")->select();
            $ticketModel = M("guestTicket");
            foreach($ticketlist as &$v){
                $v['count']    = $v['count'] - $v['usenum'];
                $ticketinfo    = $ticketModel->find($v['gtid']);
                $v['datezone'] = $this->getDateZone($ticketinfo['timetype'],$ticketinfo['date_s'],$ticketinfo['date_e']);
                $v['timezone'] = $this->getTimeZone($ticketinfo['timezone_s'],$ticketinfo['timezone_e']);
                $v['tag']      = $ticketinfo['tag'];
            }
            //查询散票订单 end

            $data['userinfo'] = $userinfo;
            $data['placelist']= $orderlist;
            $data['ticketlist'] = $ticketlist;
            $result['status'] = 200;
            $result['data']   = $data;
        }else{
            $result['status'] = 201;
            $result['msg']    = '订单编号不能为空';
        }
        echo(json_encode($result));
    }

    /**
     * s保存订单信息
     */
    public function confirmOrder(){
        Log::write('预定下单请求参数：'.json_encode($_REQUEST));
        $user_phone = I('user_phone');
        if(empty($user_phone)){
            $result['status'] = 3;
            $result['msg']    = '用户信息不能为空';
            echo(json_encode($result));
            exit();
        }else{
            $userinfo = D("userinfo")->findByPhone($user_phone);
            if(!is_array($userinfo)){
                $result['status'] = 3;
                $result['msg']    = '用户不存在';
                echo(json_encode($result));
                exit();
            }
            $uid    = $userinfo['id'];
            $openid = $userinfo['openid'];
        }

        $spacetid  = I("spacetid");
        $shid      = I("shid");
        $old_oid   = I("oid");
        $spaceinfo = '';
        $dateinfo  = I("date");
        $ids       = I("ids");
        $tids      = I("tids");

        $model = M();
        $model->startTrans();//启动事务处理

        //片区预定处理 start
        $flag = 200;
        $resultOrder = array();
        if(!empty($ids)){
            $number    = date('YmdHis').$this->getRandChar(4);
            $list      = explode('|',$ids);
            $tmp       = explode('_',$list[0]);
            $timeinfo  = $tmp[1].'--';
            $tmp       = explode('_',$list[count($list) - 1]);
            $timeinfo .= date("H:i",strtotime("+30 minutes",strtotime($tmp[1])));
            $title     = $this->getOrderTitle($list[0][0]);
            $hourinfo  = (count($list) / 2).'小时';
            $OrderPath = $this->getOrderPath($spacetid,$list[0][0]);
            $amount    = $this->getOrderAmount($list);
            $path      = $OrderPath['gym'].'：'.$OrderPath['spaceType'].$OrderPath['place'];
            $placeinfo = $OrderPath['spaceType'].$OrderPath['place'].'订场信息';
            $date      = str_replace('月','-',$dateinfo);
            $date      = str_replace('日','',$date);
            $date      = strtotime(date('Y').'-'.$date);
            $weekinfo  = $this->getWeekByDate($date);

            foreach($list as $v){
                $tmp     = explode('_',$v);
                $tmptime = $tmp[1].'--'.date("H:i",strtotime("+30 minutes",strtotime($tmp[1])));
                $tmp = $this->checkExist($v[0],$dateinfo,$tmptime,$old_oid);
                if($tmp == 1){
                    $result['status'] = 3;
                    $result['msg']    = '场地已被预订';
                    echo(json_encode($result));
                    exit();
                }
            }

            $sportHall = M("sportHall")->field("icon")->find($shid);
            $icon      = $sportHall['icon'];

            $oid = D("order")->addOrder($uid,$openid,$number,$title,$spacetid,$amount,$spaceinfo,$dateinfo,$timeinfo,$placeinfo,$hourinfo,$path,$weekinfo,$icon);


            $i   = 0;
            if($oid > 0){
                $model = D("place");
                foreach($list as $v){
                    $placelist[$i]['oid']       = $oid;
                    $placelist[$i]['dateinfo']  = $dateinfo;
                    $tmp = explode('_',$v);
                    $placeid = $tmp[0];
                    $time_s  = $tmp[1];
                    $placelist[$i]['placeinfo'] = $placeid;
                    $placelist[$i]['timeinfo']  = $time_s.'--'.date("H:i",strtotime("+30 minutes",strtotime($time_s)));
                    $tmp = $this->getOrderPath($spacetid,$tmp[0]);
                    $placelist[$i]['spaceinfo'] = $tmp['spaceType'].$tmp['place'];
                    $placelist[$i]['path']      = $tmp['gym'].'：'.$tmp['spaceType'].$tmp['place'];
                    $placelist[$i]['addtime']   = time();
                    $Place = $model->find($placeid);
                    $placelist[$i]['price']     = $this->getPriceByConfig($time_s,$Place['priceconfigid']);
                    $placelist[$i]['weekinfo']  = $this->getWeekByDate($dateinfo);
                    $placelist[$i]['hourinfo']  = 0.5;//半小时为单位
                    $i++;
                }
                $flag = M("orderPlace")->addAll($placelist);
                Log::write('新增预定片区信息，结果：'.$flag.',SQL:'.M()->getLastSql());

                if($old_oid > 0){//表明是改签订单，需要写入记录
                    $fee   = 0;//改签的手续费，需根据配置获取
                    $order = D("order")->getOrderById($old_oid);
                    $backfee = $order['amount'] - $fee;
                    $data['category'] = 1;
                    $data['uid']      = $_SESSION['uid'];
                    $data['oid']      = $old_oid;
                    $data['fee']      = $fee;
                    $data['backfee']  = $backfee;
                    $data['new_oid']  = $oid;
                    $data['addtime']  = time();
                    $data['status']   = 0;
                    M("backList")->add($data);
                    Log::write('新增改签记录，结果：'.$flag.',SQL:'.M()->getLastSql());
                }


                //订单保存成功后进行支付操作
                $flag = D("Userinfo")->reduceBalance($uid,$amount,'支付预定订单：'.$oid);
                if($flag == 201){
                    $result['status'] = 201;
                    $result['msg']    = '支付金额不能为0';
                }elseif($flag == 202){
                    $result['status'] = 202;
                    $result['msg']    = '账户余额不够，请充值或换用其他支付方式';
                }elseif($flag == 203){
                    $result['status'] = 203;
                    $result['msg']    = '账户扣除失败';
                }elseif($flag == 200){
                    $orderstatus      = D("order")->updatePayStatus($oid);//更新订单的支付状态
                    $backlist         = D("backList")->getDataByNewOid($oid);//检测是否是改签的订单
                    if(is_array($backlist)){
                        D("backList")->updateStatus($backlist['id']);//更新改签记录的状态
                        D("order")->updateOrderStatusByBack($backlist['oid']);//更新旧订单的状态为改签
                        D("orderPlace")->updateOrderStatusByBack($backlist['oid']);//更新旧订单的片区状态为改签
                        //退钱
                        $flagUser = D("Userinfo")->refundBalance($order['uid'], $backfee, '订单'.$oid.'，编号：'.$order['number'].'，退款金额：'.$refound.'，手续费：'.$fee);
                    }
                    if($orderstatus){
                        $resultOrder['number'] = $number;
                        $resultOrder['placelist'] = $placelist;
                        /*$result['status'] = 200;
                        $result['number'] = $number;
                        $result['placelist'] = $placelist;
                        $result['msg']    = '支付成功';*/
                    }else{
                        D("Userinfo")->refundBalance($uid,$amount,'预定订单退款：'.$oid);
                        $result['status'] = 301;
                        $result['msg']    = '订单操作失败';
                    }
                }else{
                    $result['status'] = 404;
                    $result['msg']    = '未知错误';
                }
            }else{
                $flag = 500;
            }
        }
        //片区预定处理 end


        //散票预定处理方法 start
        $flag_t = 200;
        $resultTicket = array();
        if(!empty($tids)){
            $tids = I("tids");
            $list = explode('|',$tids);
            $ticket['uid']    = $uid;
            $ticket['openid'] = $openid;
            $number           = date('YmdHis').$this->getRandChar(5);
            $ticket['number'] = $number;
            $ticket['stid']   = $spacetid;
            $ticketAmount     = $this->getTicketAmount($list);
            $ticket['amount'] = $ticketAmount;
            $ticket['addtime']= time();
            $otid = M("orderTicket")->add($ticket);
            Log::write('新增散票购买订单，结果：'.$otid.',SQL:'.M()->getLastSql());

            $ticketModel = M("guestTicket");
            $j = 0;
            foreach($list as $v){
                $tmpticket = explode('_',$v);//分割 ID 和 addNum
                $tmpinfo = $ticketModel->find($tmpticket[0]);
                if(is_array($tmpinfo)){
                    $ticketList[$j]['uid']      = $uid;
                    $ticketList[$j]['otid']     = $otid;
                    $ticketList[$j]['number']   = date('YmdHis').$this->getRandChar(6);
                    $ticketList[$j]['gtid']     = $tmpinfo['id'];
                    $ticketList[$j]['stid']     = $tmpinfo['stid'];
                    $ticketList[$j]['shid']     = $tmpinfo['shid'];
                    $ticketList[$j]['title']    = $tmpinfo['title'];
                    $ticketList[$j]['price']    = $tmpinfo['price'];
                    $ticketList[$j]['unit']     = $tmpinfo['unit'];
                    $ticketList[$j]['count']    = $tmpticket[1];
                    $ticketList[$j]['gttype']   = $tmpinfo['gttype'];
                    $ticketList[$j]['addtime']  = time();
                    $ticketList[$j]['datezone'] = $this->getDateZone($tmpinfo['timetype'],$tmpinfo['date_s'],$tmpinfo['date_e']);
                    $ticketList[$j]['timezone'] = $this->getTimeZone($tmpinfo['timezone_s'],$tmpinfo['timezone_e']);
                    $ticketList[$j]['tag']      = $tmpinfo['tag'];
                    $j++;
                }
            }
            $ttid = M("orderTicketList")->addAll($ticketList);
            Log::write('新增散票购买详情，结果：'.$ttid.',SQL:'.M()->getLastSql());

            //订单保存成功后进行支付操作
            $flag_t = D("Userinfo")->reduceBalance($uid,$ticketAmount,'支付散票订单：'.$otid);
            if($flag_t == 201){
                $result['status'] = 201;
                $result['msg']    = '支付金额不能为0';
            }elseif($flag_t == 202){
                $result['status'] = 202;
                $result['msg']    = '账户余额不够，请充值或换用其他支付方式';
            }elseif($flag_t == 203){
                $result['status'] = 203;
                $result['msg']    = '账户扣除失败';
            }elseif($flag_t == 200){
                $ispay['id']      = $otid;
                $ispay['ispay']   = 1;
                $orderstatus      = M("orderTicket")->save($ispay);//更新订单的支付状态
                if($orderstatus){
                    $resultTicket['number'] = $number;
                    $resultTicket['ticketlist'] = $ticketList;
                }else{
                    D("Userinfo")->refundBalance($uid,$amount,'预定订单退款：'.$oid);
                    $result['status'] = 301;
                    $result['msg']    = '订单操作失败';
                }
            }else{
                $result['status'] = 404;
                $result['msg']    = '未知错误';
            }
        }
        //散票预定处理方法 end


        if($flag == 200 && $flag_t == 200){
            $model->commit();
            $result['order']  = $resultOrder;
            $result['ticket'] = $resultTicket;
            $result['status'] = 0;
            $result['msg']    = 'success';
            Log::write('预定成功，返回值：'.json_encode($result));
        }else{
            Log::write('事务回滚，撤销以上预定操作，原因：uid_'.$uid.$result['msg']);
            $model->rollback();
        }

        echo(json_encode($result));
    }


    /**
     * s核销预定订单
     */
    public function consumeOrder(){
        Log::write('核销预定订单请求参数：'.json_encode($_REQUEST));
        $order_number = I("order_number");
        $user_phone   = I("user_phone");
        if(empty($order_number) || empty($user_phone)){
            $result['status'] = 403;
            $result['msg']    = '订单编号或用户信息为空';
        }else{
            $userinfo  = D("userinfo")->findByPhone($user_phone);
            if(is_array($userinfo)){
                $flag      = D("order")->consumeOrderByNumber($order_number, $userinfo['id']);
                Log::write('核销结果：'.$flag);
                if($flag){
                    $result['status'] = 200;
                    $result['msg']    = '核销成功';
                }else{
                    $result['status'] = 201;
                    $result['msg']    = '核销失败';
                }
            }else{
                $result['status'] = 202;
                $result['msg']    = '用户信息错误';
            }
        }

        echo(json_encode($result));
    }

    /**
     * s核销散票订单
     */
    public function consumeTicketOrder(){
        Log::write('核销散票订单请求参数：'.json_encode($_REQUEST));
        $order_number = I("order_number");
        $user_phone   = I("user_phone");
        if(empty($order_number) || empty($user_phone)){
            $result['status'] = 403;
            $result['msg']    = '订单编号或用户信息为空';
        }else{
            $userinfo  = D("userinfo")->findByPhone($user_phone);
            if(is_array($userinfo)){
                $model = M();
                $model->startTrans();//启动事务处理
                $flag      = D("orderTicketList")->consumeOrderByNumber($order_number, $userinfo['id']);
                Log::write('散票核销结果：'.$flag);
                if($flag){
                    $model->commit();
                    $result['status'] = 200;
                    $result['msg']    = '核销成功';
                }else{
                    $model->rollback();
                    $result['status'] = 201;
                    $result['msg']    = '核销失败';
                    Log::write('事务回滚，撤销以上散票核销操作，原因：'.json_encode($result));
                }
            }else{
                $result['status'] = 202;
                $result['msg']    = '用户信息错误';
            }
        }

        echo(json_encode($result));
    }
}