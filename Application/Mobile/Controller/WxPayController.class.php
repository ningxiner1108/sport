<?php
namespace Mobile\Controller;
use OT\DataDictionary;
use Think\Log;
class WxPayAction extends MobileController
{

    public function _initialize()
    {
    }

    public function index()
    {

    }

    /**
     * 异步提示
     */
    public function notify()
    {
        Log::write("微信支付成功后返回响应如下：");
        Log::write(serialize($_POST));
        Log::write(serialize($_GET));
        $xml = file_get_contents("php://input");
        Log::write('微信返回值' . $xml);
        $xmlValue     = simplexml_load_string($xml);
        $openid       = (string)$xmlValue->openid;//这里返回的依然是个SimpleXMLElement对象
        $out_trade_no = (string)$xmlValue->out_trade_no;
        $total_fee    = 0.01 * (int)$xmlValue->total_fee;//转换为元

        //获取订单号对应的账单
        $model = M();
        $model->startTrans();//启动事务处理

        $numLen = strlen($out_trade_no);
        $data['number'] = $out_trade_no;
        $data['openid'] = $openid;
        $data['isdel']  = 0;
        $data['ispay']  = 0;
        if($numLen == 18){//场地预定订单
            $order  = M("order")->where($data)->find();
            if($order && $order['amount'] == $total_fee){
                $orderstatus      = D("order")->updatePayStatus($order['id'],'微信支付');//更新订单的支付状态
                $backlist         = D("backList")->getDataByNewOid($order['id']);//检测是否是改签的订单
                if(is_array($backlist)){
                    $flag = 1;
                    $flag *= D("backList")->updateStatus($backlist['id']);//更新改签记录的状态
                    $flag *= D("order")->updateOrderStatusByBack($backlist['oid']);//更新旧订单的状态为改签
                    $flag *= D("orderPlace")->updateOrderStatusByBack($backlist['oid']);//更新旧订单的片区状态为改签
                    $orderstatus = $orderstatus * $flag;
                }
                if($orderstatus){
                    Log::write('微信支付成功，场地预定订单号：'.$out_trade_no.',SQL:'.M()->getLastSql());
                    $model->commit();
                }else{
                    Log::write('微信支付失败，场地预定订单号：'.$out_trade_no.',SQL:'.M()->getLastSql());
                    $model->rollback();
                }
            }else{
                Log::write('微信支付失败，散票购买订单号：'.$out_trade_no.',订单不存在或金额错误，需退款，SQL:'.M()->getLastSql());
            }
        }elseif($numLen == 19){//散票预定订单
            $order       = M("orderTicket")->where($data)->find();
            if($order && $order['amount'] == $total_fee){
                $orderstatus = D("orderTicket")->updatePayStatus($order['id'],'微信支付');//更新订单的支付状态
                if($orderstatus){
                    Log::write('微信支付成功，散票购买订单号：'.$out_trade_no.',SQL:'.M()->getLastSql());
                    $model->commit();
                }else{
                    Log::write('微信支付失败，散票购买订单号：'.$out_trade_no.',SQL:'.M()->getLastSql());
                    $model->rollback();
                }
            }else{
                Log::write('微信支付失败，散票购买订单号：'.$out_trade_no.',订单不存在或金额错误，需退款，SQL:'.M()->getLastSql());
            }
        }
    }

    /**
     * 测试支付
     */
    public function testPay()
    {
        import('@.ORG.WxPay.WxPay');
        $jsApi = new JsApi_pub();

        //=========步骤1：网页授权获取用户openid============
        $openid = Session::get('openid');
        //=========步骤2：使用统一支付接口，获取prepay_id============
        //使用统一支付接口
        $unifiedOrder = new UnifiedOrder_pub();

        $unifiedOrder->setParameter("openid", $openid);//商品描述
        $unifiedOrder->setParameter("body", "你的缴费信息");//商品描述
        //自定义订单号，此处仅作举例
        $timeStamp = time();
        $out_trade_no = WxPayConf_pub::APPID . "$timeStamp";
        $unifiedOrder->setParameter("out_trade_no", "$out_trade_no");//商户订单号
        $unifiedOrder->setParameter("total_fee", "1");//总金额
        $unifiedOrder->setParameter("notify_url", WxPayConf_pub::NOTIFY_URL);//通知地址
        $unifiedOrder->setParameter("trade_type", "JSAPI");//交易类型

        $prepay_id = $unifiedOrder->getPrepayId();
        //=========步骤3：使用jsapi调起支付============
        $jsApi->setPrepayId($prepay_id);

        $jsApiParameters = $jsApi->getParameters();
        dump($jsApiParameters);
        $this->assign('payApi', $jsApiParameters);
        $this->display();
    }
}