<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Mobile\Model;
use Think\Model;
use Think\Log;
/**
 * s订单模型
 */
class OrderModel extends Model{
    /**
     * s添加订单
     * @param $uid
     * @param $openid
     * @param $number
     * @param $title
     * @param $stid
     * @param $amount
     * @param $spaceinfo
     * @param $dateinfo
     * @param $timeinfo
     * @param $placeinfo
     * @param $hourinfo
     * @param $path
     * @param $weekinfo
     * @param $icon
     * @return mixed
     */
    function addOrder($uid,$openid,$number,$title,$stid,$amount,$spaceinfo,$dateinfo,$timeinfo,$placeinfo,$hourinfo,$path,$weekinfo,$icon){
        $order['uid']       = $uid;
        $order['openid']    = $openid;
        $order['number']    = $number;
        $order['title']     = $title;
        $order['stid']      = $stid;
        $order['amount']    = $amount;
        $order['spaceinfo'] = $spaceinfo;
        $order['dateinfo']  = $dateinfo;
        $order['timeinfo']  = $timeinfo;
        $order['placeinfo'] = $placeinfo;
        $order['hourinfo']  = $hourinfo;
        $order['path']      = $path;
        $order['weekinfo']  = $weekinfo;
        $order['icon']      = $icon;
        $order['yearinfo']  = date("Y");
        $order['addtime']   = time();
        $id = $this->add($order);
        Log::write('新增订单，结果：'.$id.',SQL:'.$this->getLastSql());
        return $id;
    }

       function getTypeName($id){
        $data = D("SportType")->find($id);
        return  $data['name'];
    }
    
////     根据uid获取用户昵称和联系电话
//       function getUserInfo(){
//           
//       }
    /**
     * s根据ID获取订单信息
     * @param $id
     * @return mixed
     */
    function getOrderById($id){
        $where['id'] = $id;
        $where['isdel'] = 0;
        $result = $this->where($where)->find();
        return $result;
    }

    /**
     * s获取自己最新的订单
     * @return mixed
     */
    function getLastOrder(){
        $uid  = $_SESSION['uid'];
        $data = $this->where("isdel = 0 and uid = ".$uid)->order("id desc")->find();
        return $data;
    }

    /**
     * s获取指定用户的所有订单
     * @return mixed
     */
    function getOrderList($uid){
        $data = $this->where("isdel = 0 and uid = ".$uid)->order("id desc")->select();
        return $data;
    }

    /**
     * s根据时间判断订单是否有效，如果已过期则更新订单状态
     */
    function udpateOrderStatus($uid = 0){
        if($uid > 0){
            $where['uid']     = $uid;
        }

        //$where['addtime'] = array('lt',''.(time() - C("VALIDATE_TIME")));//有效期内未支付的自动更新为已过期
        $where['isdel']   = 0;
        $where['ispay']   = array('in',array(0,1));
        $where['dateinfo']= date('m月d日');
        $orderlist = $this->where($where)->select();

        $orderPlace = D("OrderPlace");
        if($orderlist){
            foreach($orderlist as $v){
                $data = array();
                $data['id']    = $v['id'];
                $data['ispay'] = $v['ispay'];
                if($v['ispay'] == 0 && $v['addtime'] < (time() - C("VALIDATE_TIME"))){
                    $data['ispay']    = 2;
                }
                if($v['ispay'] == 1){
                    $times = explode('--',$v['timeinfo']);
                    $ordertime = $v['yearinfo'].'-'.$v['dateinfo'].$times[1].':00';
                    $ordertime = str_replace('月','-',$ordertime);
                    $ordertime = str_replace('日',' ',$ordertime);
                    if(time() > strtotime($ordertime)){//如果当前时间大于预定的最后时间，则表明是过期未入
                        $data['ispay']    = 6;
                    }
                }
                $flag = $this->save($data);

                $place = $orderPlace->where("oid = ".$v['id'])->select();
                foreach($place as $vv){
                    $data_place = array();
                    $data_place['id'] = $vv['id'];
                    $data_place['ispay'] = $vv['ispay'];
                    if($vv['ispay'] == 0 && $vv['addtime'] < (time() - C("VALIDATE_TIME"))){
                        $data_place['ispay']    = 2;
                    }
                    if($vv['ispay'] == 1){
                        $times = explode('--',$vv['timeinfo']);
                        $ordertime = $v['yearinfo'].'-'.$vv['dateinfo'].$times[1].':00';
                        $ordertime = str_replace('月','-',$ordertime);
                        $ordertime = str_replace('日',' ',$ordertime);
                        if(time() > strtotime($ordertime)){//如果当前时间大于预定的最后时间，则表明是过期未入
                            $data_place['ispay']    = 6;
                        }
                    }
                    $orderPlace->where("id = ".$vv['id'])->save($data_place);
                }

            }
        }
    }

    /**
     * s更新订单状态为已支付，并把订单对应的片区也更新为已支付
     * @param $oid
     * @return int
     */
    function updatePayStatus($oid,$type = '一卡通'){
        $data['ispay']   = 1;
        $data['paytime'] = time();
        $data['paytype'] = $type;
        $result = $this->where("id = ".$oid)->save($data);
        $flag   = 0;
        if($result){
            $flag = D("orderPlace")->where("oid = ".$oid)->setInc("ispay",1);
        }
        return $flag;
    }

    /**
     * s根据ID获取已支付的订单
     * @param $id
     * @return mixed
     */
    function getPayedOrderById($id){
        $where['id'] = $id;
        $where['isdel'] = 0;
        $where['ispay'] = 1;
        $result = $this->where($where)->find();
        return $result;
    }
    /**
     * s根据ID获取已支付的订单
     * @param $id
     * @return mixed
     */
    function getPayedOrderByNumber($number){
        $where['number'] = $number;
        $where['isdel'] = 0;
        $where['ispay'] = 1;
        $result = $this->where($where)->find();
        return $result;
    }

    /**
     * s根据ID获取未支付的订单
     * @param $id
     * @return mixed
     */
    function getNoPayOrderById($id){
        $where['id'] = $id;
        $where['isdel'] = 0;
        $where['ispay'] = 0;
        $result = $this->where($where)->find();
        return $result;
    }


    /**
     * s更新订单状态为退款
     * @param $id
     * @return bool
     */
    function updateOrderRefound($id){
        if($id > 0){
            $data['id']   = $id;
            $data['ispay'] = 3;//退款
            $result = $this->save($data);
            return $result;
        }else{
            return false;
        }
    }

    /**
     * S根据openid查询订单
     * @param $openid
     * @return mixed
     */
    function getOrderByOpenid($openid){
        $where['openid'] = $openid;
        $where['isdel']  = 0;
        $result = $this->where($where)->select();
        return $result;
    }

    /**
     * s获取用户未登录时下单的订单
     * @param $openid
     * @return mixed
     */
    function getOrderByLogin($openid){
        $where['openid'] = $openid;
        $where['isdel']  = 0;
        $where['uid']    = 0;
        $result = $this->where($where)->select();
        return $result;
    }

    /**
     * 处理用户未登录先下单的订单，更新用户id
     * @param $openid
     * @param $uid
     * @return bool
     */
    function updateOrderByUserid($openid, $uid){
        $where['openid'] = $openid;
        $where['isdel']  = 0;
        $where['uid']    = 0;
        $data['uid']     = $uid;
        $result = $this->where($where)->save($data);
        return $result;
    }

    /**
     * s根据用户ID和订单id来查询订单是否存在，已方便做改定流程
     * @param $uid
     * @param $oid
     * @return mixed
     */
    function getOrderByUidAndOid($uid, $oid){
        $where['id']     = $oid;
        $where['isdel']  = 0;
        $where['ispay']  = 1;
        $where['uid']    = $uid;
        $result = $this->where($where)->select();
        return $result;
    }

    /**
     * s更新订单状态为改签
     * @param $id
     * @return bool
     */
    function updateOrderStatusByBack($id){
        $data['id'] = $id;
        $data['ispay'] = 5;
        $result = $this->save($data);
        return  $result;
    }

    /**
     * 根据用户ID获取已支付尚未消费的订单
     * @param $uid
     * @param int $stid
     * @return array
     */
    function getOrderByUserId($uid, $stid = 0){
        $map = array();
        $map['uid']    = $uid;
        $map['ispay']  = 1;
        $map['isdel']  = 0;
        if($stid > 0){
            $map['stid'] = $stid;
        }
        return $this->selectByWhere($map);
    }

    /**
     * s根据订单号和用户信息进行核销
     * @param $number
     * @param $uid
     * @return bool
     */
    function consumeOrderByNumber($number, $uid){
        $map = array();
        $map['number'] = $number;
        $map['uid']    = $uid;
        $map['ispay']  = 1;
        $map['isdel']  = 0;
        $orderinfo     = $this->findByWhere($map);
        if(is_array($orderinfo)){
            $data['ispay'] = 4;
            $data['id']    = $orderinfo['id'];
            $result = $this->save($data);
            Log::write('核销订单：'.$number.'，结果：'.$result.'，SQL:'.M()->getLastSql());

            if($result){
                $orderPlace['ispay'] = 4;
                $result = D("OrderPlace")->where('oid = '.$orderinfo['id'])->save($orderPlace);
                Log::write('核销片区：'.$number.'，结果：'.$result.'，SQL:'.M()->getLastSql());
            }
        }else{
            $result = false;
        }
        return $result;
    }
}
