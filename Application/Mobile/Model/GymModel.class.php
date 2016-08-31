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
class GymModel extends Model{
    
    protected  $patchValidate = true;
    protected  $_validate =   array(
         array('name','require','场馆名称必须填写'),
         array('address','require','具体地址必须填写'),
        
        
        
        
        
        
    );       
    
   // protected $typeName = array(
   //  'Profile'=>array(
   //      'mapping_type'  => self::HAS_ONE,
   //      'class_name'    => 'SportHallModel',
   //      'foreign_key'   => 'type',
   //      'as_fields' => 'name',
   //      ),
   //  );
    
    
    
    
    
    function getList(){
        $datalist = $this->order('sort desc')->select();
        return $datalist;
    }

    function getSportType($id){
        $data = $this->field("stids")->find($id);
        return $data['stids'];
    }
    
    function getTypeName($id){
        $data = D("SportType")->find($id);
        return  $data['name'];
    }
    
    function getTree(){
        $gym = $this->field('id,name')->order('sort desc')->select();
        foreach($gym as $k=>&$v){
            $hall[$k] = D('SportHall')->where('gid=' . $v['id'])->field("id,gid,name")->select();
            $gym[$k]['_'] = $hall[$k];
            foreach($hall[$k] as $kk=>&$vv){
                $map['shid'] = $vv['id'];
                $map['gid'] = $vv['gid'];
                $spaceType[$kk] = D('spaceType')->where($map)->field("id,gid,shid,name")->select();
                $gym[$k]['_'][$kk]['_'] = $spaceType[$kk];
                foreach($spaceType[$kk] as $kkk=>&$vvv){
                    $map2['shid'] = $vvv['shid'];
                    $map2['gid'] = $vvv['gid'];
                    $map2['spaceid'] = $vvv['id'];
                    $place[$kkk] = D('Place')->where($map2)->field("id,gid,shid,spaceid,name")->select();
                    $gym[$k]['_'][$kk]['_'][$kkk]['_'] = $place[$kkk];
                }
           }
        }
        return $gym;
    }
}
