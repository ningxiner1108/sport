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
 * 分类模型
 */
class BackListModel extends Model{
    /**
     * s根据订单号查询是否存在改签订单
     * @param $oid
     * @return mixed
     */
    public function getDataByNewOid($oid){
        $where['new_oid']    = $oid;
        $where['status'] = 0;
        $data = $this->where($where)->find();
        return $data;
    }

    /**
     * s更新改签状态为已完成
     * @param $id
     * @return bool
     */
    public function updateStatus($id){
        $data['id'] = $id;
        $data['status'] = 1;
        $result = $this->save($data);
        return $result;
    }
}
