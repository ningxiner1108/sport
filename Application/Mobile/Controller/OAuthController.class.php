<?php
namespace Mobile\Controller;
use Think\Controller;
use Think\Log;
/**
 * 微信授权登陆
 * Class OAuthAction
 */
class OAuthController extends Controller
{
    public function index()
    {
    }

    /**
     * 用户基本信息
     */
    public function wxUserBase()
    {
        Log::write('用户访问信息wxUserBase：'.json_encode($_GET));
        $state = I('get.state');
        $appid = I('get.wxappid');
        $Wechat = $this->getWechat();
        $url = $Wechat->getOauthRedirect(getBaseUrl() . U('/Mobile/OAuth/wxCode/wxappid/'.$appid), $state, 'snsapi_base');
        Log::write('weixin-snsapi_base: ' . $url);
        redirect($url);
    }

    /**
     * 用户详细信息
     */
    public function wxUserInfo()
    {
        Log::write('用户访问信息wxUserInfo：'.json_encode($_GET));
        $state = I('get.state');
        $appid = I('get.wxappid');
        $Wechat = $this->getWechat();
        $url = $Wechat->getOauthRedirect(getBaseUrl() .  U('/Mobile/OAuth/wxCode/wxappid/'.$appid), $state, 'snsapi_userinfo');
        Log::write('weixin-snsapi_userinfo: ' . $url);
        redirect($url);
    }

    /**
     * 用户同意授权后
     *
     * 如果用户同意授权，页面将跳转至 redirect_uri/?code=CODE&state=STATE。若用户禁止授权，则重定向后不会带上code参数，仅会带上state参数redirect_uri?state=STATE
     *
     * code说明 ：
     * code作为换取access_token的票据，每次用户授权带上的code将不一样，code只能使用一次，5分钟未被使用自动过期。
     */
    public function wxCode()
    {
        $code  = I('get.code');
        $state = I('get.state');
        $appid = I('get.wxappid');
        Log::write('获取用户信息：'.json_encode($_GET));

        if (!empty($code)) {
            $Wechat = $this->getWechat();
            $token = $Wechat->getOauthAccessToken();
            //记录用户数据
            if (!empty($token)) {
                //判断用户信息是否存在 不存在 用户全面授权
                $token['updatetime'] = time();
                M('WeixinUserToken')->add($token, null, true);
                $openid = $token['openid'];
                $WeixinUserModel = D('WeixinUser');
                //设置SESSION信息
                $_SESSION['openid'] = $openid;
                //Session::set('openid', $openid);
                if ($token['scope'] == 'snsapi_base') {
                    //查询用户信息
                    $user = $WeixinUserModel->findByOpenid($openid);
                    if (empty($user)) {
                        //获取用户信息
                        Log::write('新用户第一次打开页面，获取用户详细信息');
                        $this->redirect('/Mobile/OAuth/wxUserInfo/wxappid/'.$appid.'/state/'.$state);
                    }
                } else if ($token['scope'] == 'snsapi_userinfo') {
                    //更新用户信息
                    $user = $Wechat->getOauthUserinfo($token['access_token'], $openid);
                    $this->checkEmpty($user, '用户信息获取失败！');
                    $WeixinUserModel->addOne($user);
                } else {
                    $this->error('登录状态错误！');
                }
                //跳转页面
                $this->redirect('/Mobile/Index/sportHall/id/1/?t='.time());
            } else {
                $this->error($Wechat->errCode . ' ' . $Wechat->errMsg);
            }
        } else {
            $this->error('授权失败！');
        }
    }



    /**
     * 返回微信类
     * @return Wechat
     */
    public function getWechat()
    {
        import('@.ORG.Wx.Wx');
        $options = array(
            'token' => C('WEIXIN_TOKEN'), //填写你设定的key
            'appid' => C('WXAPPID'), //填写高级调用功能的app id
            'appsecret' => C('WXAPPSECRET'), //填写高级调用功能的密钥
            'debug' => true,
        );
        $Wechat = new \TPWechat($options);
        return $Wechat;
    }
}