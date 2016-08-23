<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Mobile\Controller;
use Think\Controller;
use Think\Log;

/**
 * 前台公共控制器
 * 为防止多分组Controller名称冲突，公共Controller名称统一使用分组名称
 */
class MobileController extends CommonController{

	/* 空操作，用于输出404页面 */
	public function _empty(){
		$this->redirect('Index/index');
	}


    public function _initialize(){
        if(CONTROLLER_NAME != 'Front'){
            parent::_initialize();
        }

        /* 读取站点配置 */
        $config = api('Config/lists');
        C($config); //添加配置

        if(!C('WEB_SITE_CLOSE')){
            $this->error('站点已经关闭，请稍后访问~');
        }
    }

	/* 用户登录检测 */
    public function login(){
		/* 用户登录检测 */
		is_login() || $this->error('您还没有登录，请先登录！', U('Userinfo/login'));
	}

    /**
     * 根据指定长度生成随机数
     * @param $length
     * @return null|string
     */
    public function getRandChar($length){
        $str = null;
        $strPol = "0123456789";
        $max = strlen($strPol)-1;

        for($i=0;$i<$length;$i++){
            $str.=$strPol[rand(0,$max)];//rand($min,$max)生成介于min和max两个数之间的一个随机整数
        }

        return $str;
    }


    /**
     * 生成用户编号
     */
    public function createUserNumber(){
        $str = time();
        $str .= $this->getRandChar(4);
        return $str;
    }

    /**
     * s根据日期算出是星期几
     * @param $date
     * @return mixed
     */
    public function getWeekByDate($date){
        $weekarray = array("日","一","二","三","四","五","六");
        /*$date      = str_replace('年','-',$date);
        $date      = str_replace('月','-',$date);
        $date      = str_replace('日','',$date);*/
        $result    = '周'.$weekarray[date("w",$date)];
        return $result;
    }


    /**
     * 生成二维码
     * @param $data
     * @param $filename
     * @return string
     */
    public function createQrcode($data,$filename){
        include_once("phpqrcode.php");
        $path = '/Uploads/Qrcode/'.$filename;
        \QRcode::png($data, '.'.$path, 'H',6, 1);
        return $path;
    }


    /**
     * s获取每块场地的当前预定状态
     */
    public function getOrderStatus($placelist,$times,$date = '',$oid = 0,$type = ''){
        if($date == ''){
            $date = date('m月d日');
        }
        $date_s  = str_replace('月','-',$date);
        $date_s  = str_replace('日',' ',$date_s);
        $old_oid = 0;
        if($oid > 0){
            $order = D("order")->getOrderByUidAndOid($_SESSION['uid'],$oid);
            if(is_array($order)){
                $old_oid = $oid;
            }
        }
        $result = array();
        $i = 0;
        foreach($placelist as $v){
            $j     = 0;
            $tmp   = array();
            $count = count($times);
            foreach($times as $vv){
                $timezone          = $vv.'--'.date("H:i",strtotime("+30 minutes",strtotime($vv)));

                /*$validateTime      = date('Y-').$date_s.' '.$vv.':00';
                $validateTime      = strtotime("+30 minutes",strtotime($validateTime));
                if(time() >= $validateTime){//如果当前时间已超出片区的时间段，则直接提示不可预订
                    $tmp[$j]['status'] = 1;
                }else{
                    /*if($type == 'front'){//PC端核销查看状态
                    $tmp[$j]['status'] = $this->checkStatus($v['id'],$date,$timezone,$old_oid);
                }else{
                    $tmp[$j]['status'] = $this->checkExist($v['id'],$date,$timezone,$old_oid);
                }
                    $tmp[$j]['status'] = $this->checkStatus($v['id'],$date,$timezone,$old_oid);
                }*/
                $status = $this->checkStatus($v['id'],$date,$timezone,$old_oid);
                $date_c = date('Y-').$date_s.' '.$vv.':00';
                if(in_array($status,array(0, 2, 3, 5))){
                    $validateTime      = date('Y-').$date_s.' '.$vv.':00';
                    $validateTime      = strtotime("+30 minutes",strtotime($validateTime));
                    if(time() >= $validateTime){//如果当前时间已超出片区的时间段，则直接提示不可预订
                        $status = 1;
                    }
                }
                $tmp[$j]['id']     = $v['id'];
                $tmp[$j]['time']   = $vv;
                $tmp[$j]['price']  = $this->getPriceByConfig($vv,$v['priceconfigid'],$date_c);
                $tmp[$j]['status'] = $status;

                if($j == $count - 2 ){
                    break;
                }else{
                    $j++;
                }
            }
            $result[$i++] = $tmp;
        }

        return $result;
    }

    /**
     * 通过查询订单详情表来确定片区的指定时间段是否已被预订
     * @param $placeid
     * @param $dateinfo
     * @param $timeinfo
     * @param int $oid s等于0时表示是改签的订单，把之前的订单占用的片区作废
     * @return int
     */
    public function checkExist($placeid,$dateinfo,$timeinfo,$oid = 0){
        $where['placeinfo']= $placeid;
        $where['dateinfo'] = $dateinfo;
        $where['timeinfo'] = $timeinfo;
        $where['_string']  = '(ispay = 0 and addtime >'.(time() - C("VALIDATE_TIME")).') OR ispay = 1';
        $result = D("OrderPlace")->where($where)->find();
        if(is_array($result)){
            if($result['oid'] == $oid){
                return 0;
            }
            return 1;
        }else{
            return 0;
        }
    }


    /**
     * s核销时检查片区的状态
     * @param $placeid
     * @param $dateinfo
     * @param $timeinfo
     * @param int $oid
     * @return int
     */
    public function checkStatus($placeid,$dateinfo,$timeinfo,$oid = 0){
        $where['placeinfo']= $placeid;
        $where['dateinfo'] = $dateinfo;
        $where['timeinfo'] = $timeinfo;

        $result = D("OrderPlace")->where($where)->order("oid desc")->find();

        if(is_array($result)){
            if($result['oid'] == $oid){
                return 0;
            }else{
                if($result['ispay'] == 0 && $result['addtime'] > (time() - C('VALIDATE_TIME'))){
                    return 2;
                }else{
                    return $result['ispay'];
                }
            }
        }else{
            return 0;
        }
    }

    /**
     * s通过价格配置表获取每片场地每个时间段的价格
     * @param $time
     * @param $ids
     * @return mixed
     */
    public function getPriceByConfig($time, $ids, $date = ''){
        $where['id'] = array('in',$ids);
        $config = D("priceConfig")->where($where)->select();
        foreach($config as $v){
            if($v['timetype'] == 0){//每天的价格设置相同
                $pricelist  = json_decode($v['price_detail'],true);
                $times  = explode(':',$time);
                $timezone = $times[0];
                if($times[1] == '30'){
                    $timezone = $timezone + 0.5;
                }
                $price = 0;
                foreach($pricelist as $vv){
                    if($vv['timezone_s'] <= $timezone && $vv['timezone_e'] > $timezone){
                        $price = $vv['price'];
                        break;
                    }
                }
            }elseif($v['timetype'] == 1){//按星期设置（例如周一至周五、周六至周日）
                $date_w = strtotime($date);
                $i = date("w",$date_w);
                $i = $i > 0 ? $i:7;
                if($v['date_s'] <= $i && $i <= $v['date_e'] ){
                    $pricelist  = json_decode($v['price_detail'],true);
                    $times  = explode(':',$time);
                    $timezone = $times[0];
                    if($times[1] == '30'){
                        $timezone = $timezone + 0.5;
                    }
                    $price = 0;
                    foreach($pricelist as $vv){
                        if($vv['timezone_s'] <= $timezone && $vv['timezone_e'] > $timezone){
                            $price = $vv['price'];
                            break;
                        }
                    }
                }
            }
        }

        //$config = D("priceConfig")->where("id in(".$ids.") and timezone_s <= ".$timezone." and timezone_e > ".$timezone)->find();
        //$price  = $config['price'];
        /*foreach($config as $v){
            $tmp = explode('-',$v['timezone']);

            if($tmp[0] <= $time && $tmp[1] > $time){
                $price = $v['price'];
                break;
            }
        }*/

        return $price;
    }

    /**
     * s获取每天的时间点
     * @return mixed
     */
    protected function getTimes($time_s = 9,$time_e = 23){
        $j = 0;
        for($i = $time_s; $i <= $time_e; $i++){
            if(ceil($i) == $i){//表明是整点
                if($i < 10){
                    $i = '0'.$i;
                }
                $times[$j++] = $i.':00';
                if($i != $time_e){
                    $times[$j++] = $i.':30';
                }
            }else{
                $times[$j++] = floor($i).':30';
                $times[$j++] = ceil($i).':00';
            }
        }
        return $times;
    }

    /**
     * s获取未来指定天数的星期和日期信息，默认取一周时间
     * @param int $days
     * @return mixed
     */
    protected function getWeekAndDate($days = 7){
        for($i = 0; $i < $days; $i++){
            $day = strtotime('+'.$i.' days');
            $date[$i]['date'] = date('m月d日',$day);
            if($i == 0){
                $date[$i]['week'] = '今天';
            }else{
                $date[$i]['week'] = $this->getWeekByDate($day);
            }
        }
        return $date;
    }


    public function getOrderPath($spacetid,$placeid){
        $place     = M("place")->find($placeid);
        $result['place'] = $place['name'];
        $spaceType = M("spaceType")->find($spacetid);
        $result['spaceType'] = $spaceType['name'];
        $gym = M("sportHall")
            ->join("sp_gym on sp_sport_hall.gid = sp_gym.id")
            ->field("sp_gym.name")
            ->where("sp_sport_hall.id = ".$spaceType['shid'])
            ->find();
        $result['gym'] = $gym['name'];
        return $result;
    }



    public function getOrderTitle($placeid){
        $place  = M("place")->find($placeid);
        $result = M("sportHall")
            ->join("sp_sport_type on sp_sport_hall.stid = sp_sport_type.id")
            ->field("sp_sport_type.name")
            ->where('sp_sport_hall.id = '.$place['shid'])
            ->find();
        $title  = $result['name'].'预定信息';
        return $title;
    }

    public function getOrderAmount($ids){
        $price = 0;
        $model = D("priceConfig");
        $place = D("place");

        foreach($ids as $v){
            $tmp    = explode('_',$v);
            $id     = $tmp[0];
            $placedata = $place->field("priceconfigid")->find($id);
            $cid    = $placedata['priceconfigid'];
            $config = D("priceConfig")->find($cid);
            $pricelist  = json_decode($config['price_detail'],true);

            $times  = explode(':',$tmp[1]);
            $timezone = $times[0];
            if($times[1] == '30'){
                $timezone = $timezone + 0.5;
            }
            foreach($pricelist as $v){
                if($v['timezone_s'] <= $timezone && $v['timezone_e'] > $timezone){
                    $price += $v['price'];
                }
            }
            //$config = $model->where("id in(".$cid.") and timezone_s <= ".$timezone." and timezone_e > ".$timezone)->find();
            ///$price  += $config['price'];
        }

        return $price;
    }

    public function getTicketAmount($ids){
        $amount = 0;
        $model  = M("guestTicket");
        foreach($ids as $v){
            $tmp    = explode('_',$v);
            $id     = $tmp[0];
            $count  = $tmp[1];
            $ticket = $model->field("price")->find($id);
            $amount += $count * $ticket['price'];
        }
        return $amount;
    }

    public function think_ucenter_md5($str, $key = 'ThinkUCenter'){
        return '' === $str ? '' : md5(sha1($str) . $key);
    }


    /**
     * s散票根据时间设置显示作用范围
     * @param $type
     * @param $date_s
     * @param $time_e
     * @return string
     */
    public function getDateZone($type,$date_s,$date_e){
        $date = '';
        if($type == 0){//不限
            $date = '每天';
        }elseif($type == 1){//指定星期
            $weekarray = array("日","一","二","三","四","五","六");
            if($date_s == 7){
                $date_s = 0;
            }
            if($date_e == 7){
                $date_e = 0;
            }
            $date = '周'.$weekarray[$date_s].' 至 '.'周'.$weekarray[$date_e];
        }elseif($type == 2){
            $date = '每月'.$date_s.'日 至 '.$date_e.'日';
        }elseif($type == 3){
            $date = date("Y-m-d", $date_s).' 至 '.date("Y-m-d",$date_e);;
        }
        return $date;
    }

    /**
     * s根据设置的时间显示时间范围
     * @param $time_s
     * @param $time_e
     * @return string
     */
    public function getTimeZone($time_s,$time_e){
        $time = '';
        if($time_s < 10){
            $time .= '0';
        }
        if(ceil($time_s) == $time_s){//表明是整点
            $time .= ceil($time_s).':00-';
        }else{
            $time .= (ceil($time_s) - 1).':30-';
        }

        if($time_e < 10){
            $time .= '0';
        }
        if(ceil($time_e) == $time_e){//表明是整点
            $time .= ceil($time_e).':00';
        }else{
            $time .= (ceil($time_e) - 1).':30';
        }
        return $time;
    }

    /**
     * s根据营业时间计算出预定时间段
     * @param $openzone
     * @return array
     */
    public function getOpenZone($openzone){
        $result = array();
        if($openzone){
            $times = explode('-',$openzone);
            foreach($times as $v){
                $tmp    = explode(':',$v);
                if($tmp[1] == '30'){
                    $result[] = $tmp[0] + 0.5;
                }else{
                    $result[] = $tmp[0] * 1;
                }
            }

        }
        return $result;
    }
}
