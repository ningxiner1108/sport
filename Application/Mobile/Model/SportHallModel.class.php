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
class SportHallModel extends Model{

    function getList($id){
        $datalist = $this->where('gid = '.$id)->order('sort desc,id desc')->select();
        return $datalist;
    }

     function getGymName($id){
        $data = D("Gym")->find($id);
        return  $data['name'];
    }

     function getTypeName($id){
        $data = D("SportType")->find($id);
        return  $data['name'];
    }

}
