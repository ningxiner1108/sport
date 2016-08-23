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
class SpaceTypeModel extends Model{

    function getList($id){
        $datalist = $this->where('shid = '.$id)->order('sort desc,id desc')->select();
        return $datalist;
    }
    
        
//    通过场馆id得到场馆和体育场的记录
    function getSpaceinfo(){
        $gym = D('Gym')->field("id,name")->select();
        foreach($gym as $v){
            $hall = D('SportHall')->field("id,name")->where("gid=".$v['id'])->select();
            
        }
//        $data['hall'] = $hall;
        return $data;
    }
    
    
}
