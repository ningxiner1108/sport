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
}
