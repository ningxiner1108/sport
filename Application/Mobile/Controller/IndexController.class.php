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

/**
 * 前台首页控制器
 * 主要获取首页聚合数据
 */
class IndexController extends MobileController {

	//系统首页
    public function index(){
        $datalist = D("gym")->getList();
        $this->assign("datalist",$datalist);
        $this->assign("title",'选择体育馆场');
        $this->display();
    }

    public function sportHall(){
        $id = I("id");
        if($id){
            $datalist = D("sportHall")->getList($id);
        }else{
            $datalist = array();
        }
        $this->assign("gid",$id);
        $this->assign("datalist",$datalist);
        $this->assign("title",'选择运动项目');
        $this->display();
    }

}