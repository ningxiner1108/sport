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

/**
 * s订单模型
 */
class OrderPlaceModel extends Model{
    function addOrder($oid,$spaceinfo,$dateinfo,$placeinfo,$timeinfo,$path,$price){
        $order['oid']       = $oid;
        $order['spaceinfo'] = $spaceinfo;
        $order['dateinfo']  = $dateinfo;
        $order['timeinfo']  = $timeinfo;
        $order['placeinfo'] = $placeinfo;
        $order['path']      = $path;
        $order['price']      = $price;
        $order['addtime']   = time();
        $id = $this->add($order);
        return $id;
    }


    /**
     * s更新片区状态为退款
     * @param $id
     * @return bool
     */
    function updateOrderRefound($id){
        if($id > 0){
            $where['oid']  = $id;
            $data['ispay'] = 3;//退款
            $result = $this->where($where)->save($data);
            return $result;
        }else{
            return false;
        }
    }

    /**
     * s更新订单状态为改签
     * @param $id
     * @return bool
     */
    function updateOrderStatusByBack($oid){
        $where['oid']  = $oid;
        $data['ispay'] = 5;
        $result        = $this->where($where)->save($data);
        return  $result;
    }

    /**
     * s根据订单ID获取片区预定信息
     * @param $oid
     * @return array
     */
    function getOrderPlaceByOid($oid){
        $map = array();
        $map['oid']    = $oid;
        $map['isdel']  = 0;
        return $this->selectByWhere($map);
    }
}
