<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: huajie <banhuajie@163.com>
// +----------------------------------------------------------------------
namespace Admin\Controller;
use Admin\Model\AuthGroupModel;
use Think\Page;

/**
 * 会员信息控制器
 * @author huajie <banhuajie@163.com>
 */
class MemberController extends AdminController {
      function index(){
          $member = $this->lists('Userinfo');
          $this->assign('_list',$member);
          $this->display();
      }
      
      function userinfoEdit($id){
         $member = D('Userinfo')->where('id='.$id)->find();
         $this->assign('order',$member);
         $this->display();
      }
}
