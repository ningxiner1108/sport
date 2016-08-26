<?php

// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: yangweijie <yangweijiester@gmail.com> <code-tech.diandian.com>
// +----------------------------------------------------------------------

namespace Admin\Controller;

/**
 * 场地管理
 * @author yangweijie <yangweijiester@gmail.com>
 */
class SportController extends AdminController {

//    public function _initialize() {
//        $this->assign('_extra_menu', array(
//            '场馆管理' => array(
//                array('title' => "体育馆信息", 'url' => "Sport/gym"),
//                array('title' => "场馆信息", 'url' => "Sport/hall"),
//                array('title' => "场地类型", 'url' => "Sport/spaceType"),
//                array('title' => "片区信息", 'url' => "Sport/place"),
//                array('title' => "散票信息", 'url' => "Sport/guestTicket")
//            ),
//            '订单管理' => array(
//                array('title' => "订单信息", 'url' => "Sport/order"),
////                array('title' => "订单信息", 'url' => "Sport/order"),
//            ),
//            '配置管理' => array(
//                array('title' => "场馆类型", 'url' => "Sport/sportType"),
//                array('title' => "价格设置", 'url' => "Sport/priceConfig"),
//                array('title' => "预订配置", 'url' => "Sport/orderConfig"),
////                array('title' => "退订改签", 'url' => "Sport/backConfig"),
//            ),
//        ));
//        parent::_initialize();
//    }

    function gym() {
        $data = array();
        $list = $this->lists('Gym');
        int_to_string($list);
        $gym = new \Mobile\Model\GymModel();
        foreach ($list as &$v) {
            $v['typename'] = $gym->getTypeName($v['type']);
        }
        $this->assign('_list', $list);
        $this->display();
    }

    function guestTicket() {
        $data = array();
        $list = $this->lists('GuestTicket');
        int_to_string($list);
        foreach ($list as &$v) {
            $v['gymname'] = D("Gym")->field('name')->find($v['gid']);
            $v['hallname'] = D('SportHall')->field('name')->find($v['shid']);
            $v['datezone'] = $this->getDateZone($v['timetype'], $v['date_s'], $v['date_e']);
            $v['timezone'] = $this->getTimeZone($v['timezone_s'], $v['timezone_e']);
        }
        $this->assign('_list', $list);
        $this->display();
    }

    function orderConfig() {
        $list = $this->lists('OrderConfig');
        int_to_string($list);
        $this->assign('_list', $list);
        $this->display();
    }

    function gymAdd() {
        if (IS_POST) {
            $gym = new \Mobile\Model\GymModel();
            if (!$gym->create()) {
                $this->error('场馆信息添加失败！');
            } else {
                $gym->addtime = time();
                $res = $gym->add();
                if ($res) {
                    $this->success('场馆信息添加成功！', 'gym');
                } else {
                    $this->error('场馆信息添加失败！');
                }
            }
        } else {
            $this->getSelectData();
            $this->display();
        }
    }

    function hallAdd() {
        if (IS_POST) {
            $hall = new \Mobile\Model\SportHallModel();
            if (!$hall->create()) {
                $this->error('场馆信息添加失败！');
            } else {
                $hall->addtime = time();
                $hall->openzone = I('openzone_s') . '-' . I('openzone_e');
                $sportType = I('stid');
                $icon = D('SportType')->field('icon')->find($sportType);
                $hall->tag = $icon['icon'];
                $res = $hall->add();
                if ($res) {
                    $this->success('场馆信息添加成功！', 'hall');
                } else {
                    $this->error('场馆信息添加失败！');
                }
            }
        } else {
            $gym = D(Gym)->field("id,name")->select();
            $this->getSelectTime();
            $this->getSelectData();
            $this->assign('gym', $gym);
            $this->display();
        }
    }

    function placeAdd() {
        if (IS_POST) {
            $place = new \Mobile\Model\PlaceModel();
            if (!$place->create()) {
                $this->error('场地信息添加失败！');
            } else {
//                print_r($_POST);die;
                $place->addtime = time();
                $res = $place->add();
                if ($res) {
                    $this->success('片区信息添加成功！', 'place');
                } else {
                    $this->error('片区信息添加失败！');
                }
            }
        } else {
            $orderConfig = $this->lists("OrderConfig");
            $priceConfig = $this->lists("PriceConfig");
            $this->assign('priceConfig', $priceConfig);
            $this->assign('orderConfig', $orderConfig);
            $this->display();
        }
    }

    function priceConfigAdd() {
        if (IS_POST) {
            $price = new \Mobile\Model\PriceConfigModel();
            if ($_POST['timetype'] == 3) {
                $_POST['date_s'] = strtotime(I('date_s_3'));
                $_POST['date_e'] = strtotime(I('date_e_3') . ' 23:59:59');
            } elseif ($_POST['timetype'] == 0) {
                $_POST['date_s'] = 0;
                $_POST['date_e'] = 0;
            } else {
                $_POST['date_s'] = $_POST['date_s_' . $_POST['timetype']];
                $_POST['date_e'] = $_POST['date_e_' . $_POST['timetype']];
            }
            $price_detail = array(
                array('timezone_s' => I('timezone_s_1'), 'timezone_e' => I('timezone_e_1'), 'price' => I('price1')),
                array('timezone_s' => I('timezone_s_2'), 'timezone_e' => I('timezone_e_2'), 'price' => I('price2')),
            );

            //print_r($_POST);die;

            if (!$price->create()) {
                $this->error('价格信息添加失败！');
            } else {
                $json = json_encode($price_detail);
                $price->price_detail = $json;
//                print_r($price->price_detail);die;
                $price->addtime = time();
                $res = $price->add();
                if ($res) {
                    $this->success('价格信息添加成功！', U('Sport/priceConfig'));
                } else {
                    $this->error('价格信息添加失败！');
                }
            }
        } else {
            $data = range(1, 31);
            $time = range(9, 24, 0.5);
            foreach ($time as $i => $v) {
                if (strstr($v, ".")) {
                    if (floor($v) < 10) {
                        $showtime[$i]['value'] = "0" . floor($v) . ":30";
                    } else {
                        $showtime[$i]['value'] = floor($v) . ":30";
                    }
                } else {
                    if ($v < 10) {
                        $showtime[$i]['value'] = "0" . $v . ":00";
                    } else {
                        $showtime[$i]['value'] = $v . ":00";
                    }
                }
            }
            $this->assign("showtime", $showtime);
            $this->assign("time", $time);
            $this->assign("data", $data);
            $this->display();
        }
    }

    function sportTypeAdd() {
        if (IS_POST) {
            $type = new \Mobile\Model\SportTypeModel();
            if (!$type->create()) {
                $this->error('类型信息添加失败！');
            } else {
                $res = $type->add();
                if ($res) {
                    $this->success('类型信息添加成功！', 'gymtype');
                } else {
                    $this->error('类型信息添加失败！');
                }
            }
        } else {
            $this->display();
        }
    }

    function spaceTypeAdd() {
        if (IS_POST) {
            $type = new \Mobile\Model\SpaceTypeModel();
            if (!$type->create()) {
                $this->error('场地类型添加失败！');
            } else {
                $type->addtime = time();
//                print_r($_POST);die;
                $res = $type->add();
                if ($res) {
                    $this->success('场地类型添加成功！', 'spaceType');
                } else {
                    $this->error('场地类型添加失败！');
                }
            }
        } else {
            $hall = $this->lists('SportHall');
            $orderConfig = $this->lists("OrderConfig");
            $priceConfig = D('PriceConfig')->field('id,title')->select();
            $this->assign('hall', $hall);
            $this->assign('priceConfig', $priceConfig);
            $this->assign('orderConfig', $orderConfig);
            $this->display();
        }
    }

    function orderConfigAdd() {
        if (IS_POST) {
            $orderConfig = new \Mobile\Model\OrderConfigModel();
            if (!$orderConfig->create()) {
                $this->error('预订信息添加失败！');
            } else {
                $res = $orderConfig->add();
                if ($res) {
                    $this->success('预订信息添加成功！', 'orderConfig');
                } else {
                    $this->error('预订信息添加失败！');
                }
            }
        } else {
            $this->display();
        }
    }

    function guestTicketAdd() {
        if (IS_POST) {
            $guestTicket = new \Mobile\Model\GuestTicketModel();
            if ($_POST['timetype'] == 3) {
                $_POST['date_s'] = strtotime(I('date_s_3'));
                $_POST['date_e'] = strtotime(I('date_e_3') . ' 23:59:59');
            } elseif ($_POST['timetype'] == 0) {
                $_POST['date_s'] = 0;
                $_POST['date_e'] = 0;
            } else {
                $_POST['date_s'] = $_POST['date_s_' . $_POST['timetype']];
                $_POST['date_e'] = $_POST['date_e_' . $_POST['timetype']];
            }
            if (!$guestTicket->create()) {
                $this->error('散票信息添加失败！');
            } else {
                $hall = D('SportHall')->field('stid')->find(I('shid'));
                $guestTicket->stid = $hall['stid'];
                $icon = D('SportType')->field('icon')->find($hall['stid']);
                $guestTicket->tag = $icon['icon'];
                $guestTicket->addtime = time();
                $res = $guestTicket->add();
                if ($res) {
                    $this->success('散票信息添加成功！', 'guestTicket');
                } else {
                    $this->error('散票信息添加失败！');
                }
            }
        } else {
            $data = range(1, 31);
            $this->getSelectTime();
            $this->assign("data", $data);
            $this->display();
        }
    }

    function gymEdit() {
        $id = I('id');
        $gm = D('Gym');
        $gym = $gm->find($id);
        if (IS_POST) {
            if (!$gm->create()) {
                $this->error('修改体育馆失败！');
            } else {
                $logo = (I('logo') == null) ? $gym['logo'] : I('logo');
                $gm->logo = $logo;
                $gid = I("gid");
                $res = $gm->where('id=' . $gid)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改体育馆成功！', U('Sport/gym'));
                } else {
                    $this->error('修改体育馆失败！');
                }
            }
        } else {
            $this->getSelectData();
            $this->assign('gym', $gym);
            $this->display();
        }
    }

    function sportTypeEdit() {
        $id = I("id");
        $type = D('SportType');
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改类型失败！');
            } else {
                $icon = (I('icon') == null) ? $sportType['icon'] : I('icon');
                $type->icon = $icon;
                $id = I("sportTypeId");
                $res = $type->where('id=' . $id)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改类型成功！', U('Sport/sportType'));
                } else {
                    $this->error('修改类型失败！');
                }
            }
        } else {
            $sportType = $type->find($id);
            $this->assign('sportType', $sportType);
            $this->display();
        }
    }

    function hallEdit() {
        $id = I("id");
        $type = D('SportHall');
        $hall = $type->find($id);
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改场馆失败！');
            } else {
//                print_r($_POST);die;
                $icon = (I('icon') == null) ? $hall['icon'] : I('icon');
                $type->icon = $icon;
                $type->openzone = I('openzone_s') . '-' . I('openzone_e');
                $hid = I("id");
                $res = $type->where('id=' . $hid)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改场馆成功！', U('Sport/hall'));
                } else {
                    $this->error('修改场馆失败！');
                }
            }
        } else {
            $gym = D('Gym')->field('id,name')->select();
            $open = explode('-', $hall['openzone']);
            $this->getSelectData();
            $this->getSelectTime();
            $this->assign('gym', $gym);
            $this->assign('open', $open);
            $this->assign('hall', $hall);
            $this->display();
        }
    }

    function spaceTypeEdit() {
        $id = I("id");
        $type = D('SpaceType');
        $spaceType = $type->find($id);
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改场地类型失败！');
            } else {
//                print_r($_POST);die;
                $hid = I("id");
//                print_r($hid);die;s
                $res = $type->where('id=' . $hid)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改场地类型成功！', U('Sport/spaceType'));
                } else {
                    $this->error('修改场地类型失败！');
                }
            }
        } else {
            $orderConfig = $this->lists("OrderConfig");
            $priceConfig = D('PriceConfig')->field('id,title')->select();
            $this->assign('spaceType', $spaceType);
            $this->assign('priceConfig', $priceConfig);
            $this->assign('orderConfig', $orderConfig);
            $this->display();
        }
    }

    function placeEdit() {
        $id = I("id");
        $type = D('Place');
        $place = $type->find($id);
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改场地类型失败！');
            } else {
                $hid = I("id");
                $res = $type->where('id=' . $hid)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改场地类型成功！', U('Sport/place'));
                } else {
                    $this->error('修改场地类型失败！');
                }
            }
        } else {
            $orderConfig = $this->lists("OrderConfig");
            $priceConfig = D('PriceConfig')->field('id,title')->select();
            $this->assign('place', $place);
            $this->assign('priceConfig', $priceConfig);
            $this->assign('orderConfig', $orderConfig);
            $this->display();
        }
    }

    function orderConfigEdit() {
        $id = I("id");
        $type = D('OrderConfig');
        $orderConfig = $type->find($id);
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改预订配置失败！');
            } else {
//                print_r($_POST);die;
                $hid = I("id");
                $res = $type->where('id=' . $hid)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改预订配置成功！', U('Sport/orderConfig'));
                } else {
                    $this->error('修改预订配置失败！');
                }
            }
        } else {
            $this->assign('orderConfig', $orderConfig);
            $this->display();
        }
    }

    function guestTicketEdit() {
        $id = I("id");
        $type = D('GuestTicket');
        $guestTicket = $type->find($id);
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改散票信息失败！');
            } else {
               // print_r($_POST);die;
                $hid = I("id");
                $res = $type->where('id=' . $hid)->save();
                // print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改散票信息成功！', U('Sport/guestTicket'));
                } else {
                    $this->error('修改散票信息失败！');
                }
            }
        } else {
            $data = range(1, 31);
            $this->getSelectTime();
            $this->assign("data", $data);
            if($timetype=3){
                $date_s = date('Y-m-d',$guestTicket['date_s']);
                $date_e = date('Y-m-d',$guestTicket['date_e']);
                $this->assign('date_s', $date_s);
                $this->assign('date_e', $date_e);
            }
            $this->assign('guestTicket', $guestTicket);
            $this->display();
        }
    }

    function deleteModel($model, $url) {
        $model = D($model);
        $id = array_unique((array) I('id', 0));
        $id = is_array($id) ? implode(',', $id) : $id;
        if (empty($id)) {
            $this->error('请选择要操作的数据!');
        }
        $map['id'] = array('in', $id);
        $model->delete($id);
        $this->success("删除成功", U($url));
    }

    function gymDelete() {
        $this->deleteModel('Gym', 'gym');
    }

    function hallDelete() {
        $this->deleteModel('SportHall', 'hall');
    }

    function orderDelete() {
        $this->deleteModel('Order', 'order');
    }

    function placeDelete() {
        $this->deleteModel('Place', 'place');
    }

    function sportTypeDelete() {
        $this->deleteModel('SportType', 'sportType');
    }

    function priceDelete() {
        $this->deleteModel('PriceConfig', 'price');
    }

    function orderConfigDelete() {
        $this->deleteModel('OrderConfig', 'orderConfig');
    }

    function priceConfigDelete() {
        $this->deleteModel('PriceConfig', 'priceConfig');
    }

    function guestTicketDelete() {
        $this->deleteModel('GuestTicket', 'guestTicket');
    }

    function spaceTypeDelete() {
        $this->deleteModel('SpaceType', 'spaceType');
    }

    function hall() {
        $list = $this->lists('SportHall');
        int_to_string($list);
        $gym = new \Mobile\Model\SportHallModel();
        foreach ($list as &$v) {
            $v['gymname'] = $gym->getGymName($v['gid']);
            $v['typename'] = $gym->getTypeName($v['stid']);
        }
        $this->assign('_list', $list);
        $this->display();
    }

    function place() {
        $list = $this->lists('Place');
        int_to_string($list);
        foreach ($list as &$v) {
            $v['gymname'] = D("Gym")->field('name')->find($v['gid']);
            $v['hallname'] = D("SportHall")->field('name')->find($v['shid']);
            $v['spacename'] = D("SpaceType")->field('name')->find($v['spaceid']);
        }
        $this->assign('_list', $list);
        $this->display();
    }

    function order() {
        $list = $this->lists('Order');
        int_to_string($list);
        foreach ($list as &$v) {
            $userinfo = new \Mobile\Model\UserinfoModel();
            $user = $userinfo->findByUserId($v['uid']);
            $v['nickname'] = $user['nickname'];
            $v['phone'] = $user['phone'];
        }
        $gym = new \Mobile\Model\OrderModel();
        foreach ($list as &$v) {
            $v['typename'] = $gym->getTypeName($v['shid']);
        }
        $this->assign('_list', $list);
        $this->display();
    }

    function priceConfig() {
        $list = $this->lists('PriceConfig');
        foreach ($list as &$v) {
            $v['datezone'] = $this->getDateZone($v['timetype'], $v['date_s'], $v['date_e']);
            $v['timezone'] = $this->getTimeZone($v['timezone_s'], $v['timezone_e']);
        }
//        print_r($list);die;
        int_to_string($list);
        $this->assign('_list', $list);
        $this->display();
    }

    function sportType() {
        $list = $this->lists('SportType');
        // print_r($list);die;
        int_to_string($list);
        $this->assign('_list', $list);
        $this->display();
    }

    function spaceType() {
        $list = $this->lists('SpaceType');
        int_to_string($list);
        foreach ($list as &$v) {
            $v['hallname'] = D("SportHall")->field('name')->find($v['shid']);
            $v['gymname'] = D("Gym")->field('name')->find($v['gid']);
        }
//        print_r($list);die;
        $this->assign('_list', $list);
        $this->display();
    }

    function priceConfigEdit() {
        $id = I("id");
        $type = D('PriceConfig');
        $priceConfig = $type->find($id);
        if (IS_POST) {
             if ($_POST['timetype'] == 3) {
                    $_POST['date_s'] = strtotime(I('date_s_3'));
                    $_POST['date_e'] = strtotime(I('date_e_3') . ' 23:59:59');
                } elseif ($_POST['timetype'] == 0) {
                    $_POST['date_s'] = 0;
                    $_POST['date_e'] = 0;
                } else {
                    $_POST['date_s'] = $_POST['date_s_' . $_POST['timetype']];
                    $_POST['date_e'] = $_POST['date_e_' . $_POST['timetype']];
                }
                $price_detail = array(
                    array('timezone_s' => I('timezone_s_1'), 'timezone_e' => I('timezone_e_1'), 'price' => I('price1')),
                    array('timezone_s' => I('timezone_s_2'), 'timezone_e' => I('timezone_e_2'), 'price' => I('price2')),
                );
            if (!$type->create()) {
                $this->error('修改价格类型失败！');
            } else {
//                print_r($_POST);die;
                $hid = I("id");
                $json = json_encode($price_detail);
                $price->price_detail = $json;
                $res = $type->where('id=' . $hid)->save();
                // print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改价格类型成功！', U('Sport/priceConfig'));
                } else {
                    $this->error('修改价格类型失败！');
                }
            }
        } else {
            $data = range(1, 31);
            $this->getSelectTime();
            $this->assign("data", $data);
            if($timetype=3){
                $date_s = date('Y-m-d',$priceConfig['date_s']);
                $date_e = date('Y-m-d',$priceConfig['date_e']);
                $this->assign('date_s', $date_s);
                $this->assign('date_e', $date_e);
            }

            // print_r($priceConfig['price_detail']);die;
            $detail  = json_decode($priceConfig['price_detail'],true);
            $detail_1 = $detail[0];
            $detail_2 = $detail[1];
            // print_r($detail_1['timezone_s']);die;
             $this->assign('detail1', $detail_1);
             $this->assign('detail2', $detail_2);
            $this->assign('priceConfig', $priceConfig);
            $this->display();
        }
    }
    
        function orderEdit() {
        $id = I("id");
        $type = D('Order');
        $order = $type->find($id);
        $paytime = date("Y-m-d H:i:s",$order['paytime']);
//        print_r($paytime);die;
        if (IS_POST) {
            if (!$type->create()) {
                $this->error('修改价格类型失败！');
            } else {
//                print_r($_POST);die;
                $hid = I("id");
                $res = $type->where('id=' . $hid)->save();
//                 print_r(M()->getLastSql());die;
                if ($res) {
                    $this->success('修改价格类型成功！', U('Sport/spaceType'));
                } else {
                    $this->error('修改价格类型失败！');
                }
            }
        } else {
            $this->assign('paytime', $paytime);
            $this->assign('order', $order);
            $this->display();
        }
    }

    function getPriceDetail() {
        $id = I('id');
        $detail = D('PriceConfig')->field("price_detail")->find($id);
        if ($detail) {
            $data['state'] = 1;
            $price = json_decode($detail['price_detail'], true);
            foreach ($price as &$v) {
                $v['timezone'] = $this->getTimeZone($v['timezone_s'], $v['timezone_e']);
            }
            $data['detail'] = $price;
        }
        $this->ajaxReturn($data);
    }

    function getGymData() {
        $gym = D('Gym')->field("id,name")->select();
//        print_r($gym);die;
        if ($gym) {
            $data['state'] = 1;
            $data['gym'] = $gym;
        } else {
            $data['state'] = -1;
            $data['message'] = "没有找到相关数据";
        }
        $this->ajaxReturn($data);
    }

    function getHallData() {
//      获取体育场馆的id
        $gid = I("gid");
        $hall = D('SportHall')->where('gid=' . $gid)->field("id,name")->select();
        if ($hall) {
            $data['state'] = 1;
            $data['hall'] = $hall;
        } else {
            $data['state'] = -1;
            $data['message'] = "没有找到相关数据";
        }
        $this->ajaxReturn($data);
    }

    function getSpaceData() {
//        获取场馆的id
        $shid = I("shid");
        $gid = I("gid");
        $map['shid'] = $shid;
        $map['gid'] = $gid;
        $space = D('SpaceType')->where($map)->field("id,name")->select();
        if ($space) {
            $data['state'] = 1;
            $data['space'] = $space;
        } else {
            $data['state'] = -1;
            $data['message'] = "没有找到相关数据";
        }
        $this->ajaxReturn($data);
    }

//    编辑时页面展现
    function getSelectData() {
        $sportType = D('SportType')->field('id,name')->select();
        $users = D('UcenterMember')->field('id,username')->select();
        $orderConfig = $this->lists("OrderConfig");
        $priceConfig = D('PriceConfig')->field('id,title')->select();
        $this->assign('sportType', $sportType);
        $this->assign('users', $users);
        $this->assign('priceConfig', $priceConfig);
        $this->assign('orderConfig', $orderConfig);
    }

//    时间展现
    function getSelectTime() {
        $time = range(0, 23.5, 0.5);
        foreach ($time as $i => $v) {
            $showtime[$i]['key'] = $v;
            if (strstr($v, ".")) {
                if (floor($v) < 10) {
                    $showtime[$i]['value'] = "0" . floor($v) . ":30";
                } else {
                    $showtime[$i]['value'] = floor($v) . ":30";
                }
            } else {
                if ($v < 10) {
                    $showtime[$i]['value'] = "0" . $v . ":00";
                } else {
                    $showtime[$i]['value'] = $v . ":00";
                }
            }
        }
        $this->assign("showtime", $showtime);
        $this->assign("time", $time);
    }

}
