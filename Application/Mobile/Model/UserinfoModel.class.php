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
use Think\Log;
/**
 * 分类模型
 */
class UserinfoModel extends Model{
    /**
     * s注册为新会员
     * @param $phone
     * @param $nickname
     * @param $openid
     * @param $headimg
     * @param $number
     * @return bool|mixed
     */
    public function register($phone,$nickname,$openid,$headimg,$number){
        $data['phone']      = $phone;
        $data['number']     = $number;
        $data['nickname']   = $nickname;
        $data['openid']     = $openid;
        $data['headimg']    = $headimg;
        $data['reg_time']   = time();
        $id = $this->add($data);
        if($id > 0){
            $_SESSION['uid'] = $id;
            $_SESSION['nickname'] = $nickname;
            $_SESSION['openid'] = $openid;
            return $id;
        }else{
            return false;
        }
    }

    public function login($phone){
        $data['phone|number']      = $phone;
        $result = $this->where($data)->find();
        if($result){
            $_SESSION['uid'] = $result['id'];
            return $result['id'];
        }else{
            return 0;
        }
    }

    /**
     * s支出操作
     * @param $amount
     * @return int
     */
    public function reduceBalance($uid,$amount,$reason = ''){
        if($amount > 0){
            $userinfo = $this->field('balance')->find($uid);
            if($userinfo['balance'] >= $amount){
                $flag = $this->where("id = ".$uid)->setDec('balance',$amount);
                Log::write('用户账单金额支出变动，结果：'.$flag.',SQL:'.$this->getLastSql());

                $data['uid']     = $uid;
                $data['type']    = 0;//支出
                $data['amount']  = $amount;
                $data['balance'] = $userinfo['balance'] - $amount;
                $data['addtime'] = time();
                $data['reason']  = $reason;
                $data['ip']      = get_client_ip();
                $id = D("accountChange")->add($data);//添加用户账户金额变动记录
                Log::write('新增用户账户金额退款变动记录，结果：'.$id.',SQL:'.$this->getLastSql());
                if($flag && $id > 0){
                    return 200;
                }else{
                    return 203;
                }
            }else{
                return 202;//账户余额不够
            }
        }else{
            return 201;//金额为0，不参与计算
        }
    }

    /**
     * s收入/充值操作
     * @param $amount
     */
    public function increaseBalance($uid,$amount,$reason = ''){

    }

    /**
     * s退款操作
     * @param $amount
     */
    public function refundBalance($uid,$amount,$reason = ''){
        if($amount > 0){
            $userinfo = $this->field('balance')->find($uid);
            $flag = $this->where("id = ".$uid)->setInc('balance',$amount);
            Log::write('用户账单金额退款变动，结果：'.$flag.',SQL:'.$this->getLastSql());

            $data['uid']     = $uid;
            $data['type']    = 2;//退款
            $data['amount']  = $amount;
            $data['balance'] = $userinfo['balance'] + $amount;
            $data['addtime'] = time();
            $data['reason']  = $reason;
            $data['ip']      = get_client_ip();
            $id = D("accountChange")->add($data);//添加用户账户金额变动记录
            Log::write('新增用户账户金额退款变动记录，结果：'.$id.',SQL:'.$this->getLastSql());
            if($flag && $id > 0){
                return 200;
            }else{
                return 203;
            }
        }else{
            return 201;//金额为0，不参与计算
        }
    }

    /**
     * s根据用户ID查找用户信息
     * @param $uid
     * @return array
     */
    public function findByUserId($uid){
        $map = array();
        $map['id'] = $uid;
        $map['isdel']  = 0;
        return $this->findByWhere($map);
    }

    /**
     * 根据微信openid获取用户绑定信息
     * @param $openId string 微信openid
     * @return array 返回数组
     */
    public function findByOpenId($openId)
    {
        $map = array();
        $map['openid'] = $openId;
        $map['isdel']  = 0;
        return $this->selectByWhere($map);
    }

    /**
     * S通过电话号码查找用户信息
     * @param $phone
     * @return mixed
     */
    public function findByPhone($phone){
        $map = array();
        $map['phone'] = $phone;
        $map['isdel']  = 0;
        return $this->findByWhere($map);
    }

    /**
     * s以手机号码为关键词进行模糊匹配
     * @param $phone
     * @return array
     */
    public function searchByPhone($phone){
        $map = array();
        $map['phone'] = array('like','%'.$phone.'%');
        $map['isdel']  = 0;
        return $this->selectByWhere($map,'id,phone,nickname,balance','0,10');
    }

}
