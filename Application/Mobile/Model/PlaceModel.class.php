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
class PlaceModel extends Model{

    function getList($id){
        $datalist = $this->where('spaceid = '.$id)->order('sort desc,id asc')->select();
        return $datalist;
    }

    function getDataById($id){
        $data = $this->find($id);
        return $data;
    }

    
     function getGymName($id){
        $data = D("Gym")->find($id);
        return  $data['name'];
    }

     function getHallName($id){
        $data = D("SportHall")->find($id);
        return  $data['name'];
    }

}
