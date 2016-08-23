<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Mobile\Controller;
use OT\DataDictionary;
use Think\Log;
/**
 * 前台首页控制器
 * 主要获取首页聚合数据
 */
class OrderController extends MobileController {

    public function index(){
        $id    = I("id");
        $oid   = I("oid");
        if($oid > 0){//表示是改签的订单
            $order    = D("order")->getOrderById($oid);
            $datetime = $order['yearinfo'].'-'.$order['dateinfo'].$order['timeinfo'];
            $datetime = explode('--',$datetime);
            $datetime = str_replace('月','-',$datetime[0]);
            $datetime = str_replace('日',' ',$datetime);
            $datetime = strtotime($datetime.':00');
            $preTime = 30 * 60;//改签需提前的时间
            if(time() + $preTime >= $datetime){//超时无法改签
                header("Content-type:text/html;charset=utf-8");
                echo("<script>alert('无法改定，请至少提前".($preTime / 60)."分钟以上改定'); window.location.href='/Mobile/Order/orderList';</script>");
                exit();
            }
        }
        $stids     = D("spaceType")->getList($id);
        $spacetid  = $stids[0]['id'];
        $sportHall = M("sportHall")->find($stids[0]['shid']);
        $this->assign('sportHall',$sportHall);
        $placelist = D("place")->getList($spacetid);
        $this->assign("spacetid",$spacetid);
        $this->assign("placelist",$placelist);

        $timezone  = $this->getOpenZone($sportHall['openzone']);
        $times     = $this->getTimes($timezone[0],$timezone[1]);
        $this->assign("times",$times);

        $datalist = $this->getOrderStatus($placelist,$times,'',$oid);
        $this->assign("datalist",$datalist);

        $date = $this->getWeekAndDate(7);
        $this->assign("datelist",$date);
        $this->assign("oid",$oid);
        $this->assign("title",'场地选择');
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
     * s保存场地预定订单信息
     */
    public function preOrder(){
        $openid    = $_SESSION['openid'];
        $uid       = $_SESSION['uid'];
        if($uid == null || empty($uid)){
            $uid = 0;
        }
        $number    = date('YmdHis').$this->getRandChar(4);
        $spacetid  = I("spacetid");
        $shid      = I("shid");
        $old_oid   = I("oid");
        $spaceinfo = '';
        $dateinfo  = I("date");
        $ids       = I("ids");
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
                $i++;
            }
            $flag = M("orderPlace")->addAll($placelist);

            if($old_oid > 0){//表明是改签订单，需要写入记录
                $fee   = 0;//改签的手续费，需根据配置获取
                $order = D("order")->getOrderById($old_oid);
                $data['category'] = 1;
                $data['uid']      = $_SESSION['uid'];
                $data['oid']      = $old_oid;
                $data['fee']      = $fee;
                $data['backfee']  = $order['amount'] - $fee;
                $data['new_oid']  = $oid;
                $data['addtime']  = time();
                $data['status']   = 0;
                M("backList")->add($data);
            }
        }else{
            $flag = 0;
        }

        if($uid == 0){
            $result['status'] = 1;
            $result['msg']    = '用户未登录';

        }else{
            if($flag){
                $result['status'] = 0;
                $result['msg']    = 'success';
            }else{
                $result['status'] = 2;
                $result['msg']    = 'error';
            }
        }

        echo(json_encode($result));
    }


    /**
     * s保存散票购买订单信息
     */
    public function preTicketOrder(){
        $openid    = $_SESSION['openid'];
        $uid       = $_SESSION['uid'];
        if($uid == null || empty($uid)){
            $uid = 0;
        }
        $model = M();
        $model->startTrans();//启动事务处理

        $ids = I("ids");
        $list = explode('|',$ids);
        $ticket['uid']    = $uid;
        $ticket['openid'] = $openid;
        $number           = date('YmdHis').$this->getRandChar(5);
        $ticket['number'] = $number;
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

        if($uid == 0){
            $result['status'] = 1;
            $result['msg']    = '用户未登录';
            Log::write('事务回滚，撤销以上预定操作，原因：uid_'.$uid.$result['msg']);
            $model->rollback();
        }else{
            if($ttid){
                $model->commit();
                $result['status'] = 0;
                $result['msg']    = 'success';
                Log::write('预定成功，返回值：'.json_encode($result));
            }else{
                $result['status'] = 2;
                $result['msg']    = 'error';
                Log::write('事务回滚，撤销以上预定操作，原因：uid_'.$uid.$result['msg']);
                $model->rollback();
            }
        }

        echo(json_encode($result));
    }


    /**
     * s确认订单页
     */
    public function confirm(){
        $openid   = $this->getOpenid();
        $uid      = $_SESSION['uid'];
        $type     = I("type");
        if($type == 'ticket'){//散票购买的订单
            $ticketOrder = D("orderTicket")->getLastOrder();
            $oid         = $ticketOrder['id'];
            $amount      = $ticketOrder['amount'];
            $number      = $ticketOrder['number'];
            $body        = '散票购买';
            $ticketlist  = D("orderTicketList")->getListByOtid($ticketOrder['id']);
            $ticketModel = M("guestTicket");
            foreach($ticketlist as &$v){
                $ticketinfo    = $ticketModel->find($v['gtid']);
                $v['datezone'] = $this->getDateZone($ticketinfo['timetype'],$ticketinfo['date_s'],$ticketinfo['date_e']);
                $v['timezone'] = $this->getTimeZone($ticketinfo['timezone_s'],$ticketinfo['timezone_e']);
                $v['tag']      = $ticketinfo['tag'];
            }
            $this->assign("type",'ticket');
            $this->assign("order",$ticketlist);
        }else{//场地预定的订单
            $model    = D("order");
            $result   = $model->updateOrderByUserid($openid, $uid);
            $id       = I("id");
            if($id > 0){
                $order = $model->getOrderById($id);
            }else{
                $order = $model->getLastOrder();
            }
            $oid       = $order['id'];
            $amount    = $order['amount'];
            $number    = $order['number'];
            $body      = $order['title'];
            $this->assign("type",'order');
            $this->assign("order",$order);
        }
        $paypost = $this->wxPayPost($amount, $number, $body);

        $userinfo = D("userinfo")->find($_SESSION['uid']);
        $this->assign("paypost",$paypost);
        $this->assign("userinfo",$userinfo);
        $this->assign("oid",$oid);
        $this->assign("amount",$amount);
        $this->assign("number",$number);

        $this->assign("title",'确认订单');
        $this->display();
    }

    /**
     * s支付订单
     */
    public function payOrderByAjax(){
        Log::write('订单支付请求参数：'.json_encode($_REQUEST));
        $oid            = I("oid");
        $type           = I("type");
        $data['id']     = $oid;
        $data['number'] = I("number");
        $data['isdel']  = 0;
        $data['ispay']  = 0;
        $model = M();
        $model->startTrans();//启动事务处理

        if($type == 'order'){//为场地预定订单缴费
            $order  = M("order")->where($data)->find();
            if($order){
                $amount = $order['amount'];
                $pwd    = I("pwd");
                if(!empty($pwd)){
                    $flag = D("Userinfo")->reduceBalance($_SESSION['uid'],$amount,'支付订单：'.$oid);
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
                        $orderstatus      = D("order")->updatePayStatus($oid,'一卡通');//更新订单的支付状态
                        $backlist         = D("backList")->getDataByNewOid($oid);//检测是否是改签的订单
                        if(is_array($backlist)){
                            D("backList")->updateStatus($backlist['id']);//更新改签记录的状态
                            D("order")->updateOrderStatusByBack($backlist['oid']);//更新旧订单的状态为改签
                            D("orderPlace")->updateOrderStatusByBack($backlist['oid']);//更新旧订单的片区状态为改签
                        }
                        if($orderstatus){
                            $result['status'] = 200;
                            $result['msg']    = '支付成功';
                        }else{
                            D("Userinfo")->refundBalance($_SESSION['uid'],$amount,'订单退款：'.$oid);
                            $result['status'] = 301;
                            $result['msg']    = '订单操作失败';
                        }
                    }else{
                        $result['status'] = 404;
                        $result['msg']    = '未知错误';
                    }
                }else{
                    $result['status'] = 102;
                    $result['msg']    = '支付密码不能为空';
                }
            }else{
                $result['status'] = 101;
                $result['msg']    = '订单不存在或已缴费';
            }
        }elseif($type == 'ticket'){//为散票购买订单缴费
            $order  = M("orderTicket")->where($data)->find();
            if($order){
                $amount = $order['amount'];
                $pwd    = I("pwd");
                if(!empty($pwd)){
                    $flag = D("Userinfo")->reduceBalance($_SESSION['uid'],$amount,'支付订单：'.$oid);
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
                        $orderstatus      = D("orderTicket")->updatePayStatus($oid);//更新订单的支付状态
                        if($orderstatus){
                            $result['status'] = 200;
                            $result['msg']    = '支付成功';
                        }else{
                            D("Userinfo")->refundBalance($_SESSION['uid'],$amount,'散票订单退款：'.$oid);
                            $result['status'] = 301;
                            $result['msg']    = '订单操作失败';
                        }
                    }else{
                        $result['status'] = 404;
                        $result['msg']    = '未知错误';
                    }
                }else{
                    $result['status'] = 102;
                    $result['msg']    = '支付密码不能为空';
                }
            }else{
                $result['status'] = 101;
                $result['msg']    = '订单不存在或已缴费';
            }
        }

        if($result['status'] == 200){
            Log::write('支付成功，返回值：'.json_encode($result));
            $model->commit();
        }else{
            Log::write('事务回滚，撤销以上支付操作，原因：'.json_encode($result));
            $model->rollback();
        }

        echo(json_encode($result));
    }

    public function success(){
        $amount  = I("amount");
        $number  = I("number");
        $type    = I("type");
        $this->assign('number',$number);
        $this->assign('amount',$amount);
        $this->assign('type',$type);
        $this->assign("title","支付完成");
        $this->display();
    }

    public function detail(){
        $number           = I("number");
        $type             = I("type");
        $uid              = $_SESSION['uid'];
        $where['uid']     = $uid;
        $where['number']  = $number;
        $ispay            = 0;
        if($type == 'order'){
            $order    = M("order")->where($where)->find();
            if(!is_array($order)){
                $this->error('订单不存在');
            }
            $ispay    = $order['ispay'];
        }elseif($type == 'ticket'){
            $order    = M("orderTicket")->where($where)->find();
            if(!is_array($order)){
                $this->error('订单不存在');
            }else{
                $ispay       = $order['ispay'];
                $ticketlist  = D("orderTicketList")->getListByOtid($order['id']);
                $ticketModel = M("guestTicket");
                foreach($ticketlist as &$v){
                    $ticketinfo    = $ticketModel->find($v['gtid']);
                    $v['datezone'] = $this->getDateZone($ticketinfo['timetype'],$ticketinfo['date_s'],$ticketinfo['date_e']);
                    $v['timezone'] = $this->getTimeZone($ticketinfo['timezone_s'],$ticketinfo['timezone_e']);
                    $v['tag']      = $ticketinfo['tag'];
                }
                $order = $ticketlist;
            }
        }

        $userinfo = D("userinfo")->find($uid);
        $this->assign("userinfo",$userinfo);
        $this->assign("order",$order);
        $this->assign("type",$type);
        $this->assign("number",$number);
        $this->assign("ispay",$ispay);

        $filename = $number.'.png';//生成订单二维码
        $path = $this->createQrcode($number,$filename);

        $this->assign("path",$path);
        $this->assign("title","订单详情");
        $this->display();
    }

    public function orderList(){
        if(!$_SESSION['uid']){
            $this->redirect('Mobile/Userinfo/login/');
        }
        $uid = $_SESSION['uid'];
        D("Order")->udpateOrderStatus($uid);//更新订单状态
        $orderlist = D("Order")->getOrderList($uid);
        $userinfo  = D("userinfo")->find($_SESSION['uid']);
        $this->assign("orderlist",$orderlist);
        $this->assign("userinfo",$userinfo);
        $this->assign("title","订单列表");
        $this->display();
    }

    /**
     * s订单退订操作（已支付，需退款）
     */
    public function refound(){
        $oid = I("oid");
        /*$number = I("number");
        if(empty($oid) && !empty($number)){//仅有订单编号的情况，PC端的核销
            $order = D("order")->getPayedOrderByNumber($number);
            $oid   = $order['id'];
        }else{
            $order = D("order")->getPayedOrderById($oid);
        }*/
        if($oid > 0){
            $order = D("order")->getPayedOrderById($oid);
            if($order){
                $datetime = $order['yearinfo'].'-'.$order['dateinfo'];
                $datetime = str_replace('月','-',$datetime);
                $datetime = str_replace('日','',$datetime);
                $times    = explode('--',$order['timeinfo']);
                $timestart = strtotime($datetime.' '.$times[0].':00');
                $refoundTime = 30 * 60;//退款时间须比预定时间提前30分钟(包含30分钟)
                if(time() >= $timestart - $refoundTime){//不能退款
                    $result['status'] = 101;
                    $result['msg']    = '无法退款，退款时间须比预定时间提前30分钟(包含30分钟)';
                }else{
                    $amount = $order['amount'];//订单金额
                    $fee    = 10;//手续费，即不可退的金额
                    $refound= $amount - $fee;//总费用 - 手续费 = 可退金额

                    //退钱
                    $flagUser = D("Userinfo")->refundBalance($order['uid'], $refound, '订单'.$oid.'，编号：'.$order['number'].'，退款金额：'.$refound.'，手续费：'.$fee);
                    //更改订单状态
                    $flagOrder = D("Order")->updateOrderRefound($oid);
                    //更新片区状态
                    $flagOrderPlace = D("OrderPlace")->updateOrderRefound($oid);
                    if($flagUser == 200 && $flagOrder && $flagOrderPlace){
                        $result['status'] = 200;
                        $result['msg']    = '退订成功';
                    }else{
                        $result['status'] = 201;
                        $result['msg']    = '退订失败';
                    }
                }
            }else{
                $result['status'] = 302;
                $result['msg']    = '订单不存在';
            }
        }else{
            $result['status'] = 301;
            $result['msg']    = '订单编号不能为空';
        }

        echo(json_encode($result));
    }


    /**
     * S取消订单（未支付，无需退款）
     */
    public function cancelOrder(){
        $oid = I("oid");
        if($oid > 0){
            $order = D("order")->getNoPayOrderById($oid);
            if($order){
                //更改订单状态
                $flagOrder = D("Order")->updateOrderRefound($oid);
                //更新片区状态
                $flagOrderPlace = D("OrderPlace")->updateOrderRefound($oid);
                if($flagOrder && $flagOrderPlace){
                    $result['status'] = 200;
                    $result['msg']    = '取消成功';
                }else{
                    $result['status'] = 201;
                    $result['msg']    = '取消失败';
                }
            }else{
                $result['status'] = 302;
                $result['msg']    = '订单不存在';
            }
        }else{
            $result['status'] = 301;
            $result['msg']    = '订单编号不能为空';
        }

        echo(json_encode($result));
    }


}