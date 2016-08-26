<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo ($meta_title); ?>|OneThink管理平台</title>
    <link href="/Public/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/base.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/module.css">
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="/Public/Admin/css/<?php echo (C("COLOR_STYLE")); ?>.css" media="all">
     <!--[if lt IE 9]>
    <script type="text/javascript" src="/Public/static/jquery-1.10.2.min.js"></script>
    <![endif]--><!--[if gte IE 9]><!-->
    <script type="text/javascript" src="/Public/static/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/jquery.mousewheel.js"></script>
    <!--<![endif]-->
    
</head>
<body>
    <!-- 头部 -->
    <div class="header">
        <!-- Logo -->
        <span class="logo"></span>
        <!-- /Logo -->

        <!-- 主导航 -->
        <ul class="main-nav">
            <?php if(is_array($__MENU__["main"])): $i = 0; $__LIST__ = $__MENU__["main"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li class="<?php echo ((isset($menu["class"]) && ($menu["class"] !== ""))?($menu["class"]):''); ?>"><a href="<?php echo (u($menu["url"])); ?>"><?php echo ($menu["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <!-- /主导航 -->

        <!-- 用户栏 -->
        <div class="user-bar">
            <a href="javascript:;" class="user-entrance"><i class="icon-user"></i></a>
            <ul class="nav-list user-menu hidden">
                <li class="manager">你好，<em title="<?php echo session('user_auth.username');?>"><?php echo session('user_auth.username');?></em></li>
                <li><a href="<?php echo U('User/updatePassword');?>">修改密码</a></li>
                <li><a href="<?php echo U('User/updateNickname');?>">修改昵称</a></li>
                <li><a href="<?php echo U('Public/logout');?>">退出</a></li>
            </ul>
        </div>
    </div>
    <!-- /头部 -->

    <!-- 边栏 -->
    <div class="sidebar">
        <!-- 子导航 -->
        
            <div id="subnav" class="subnav">
                <?php if(!empty($_extra_menu)): ?>
                    <?php echo extra_menu($_extra_menu,$__MENU__); endif; ?>
                <?php if(is_array($__MENU__["child"])): $i = 0; $__LIST__ = $__MENU__["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub_menu): $mod = ($i % 2 );++$i;?><!-- 子导航 -->
                    <?php if(!empty($sub_menu)): if(!empty($key)): ?><h3><i class="icon icon-unfold"></i><?php echo ($key); ?></h3><?php endif; ?>
                        <ul class="side-sub-menu">
                            <?php if(is_array($sub_menu)): $i = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li>
                                    <a class="item" href="<?php echo (u($menu["url"])); ?>"><?php echo ($menu["title"]); ?></a>
                                </li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul><?php endif; ?>
                    <!-- /子导航 --><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        
        <!-- /子导航 -->
    </div>
    <!-- /边栏 -->

    <!-- 内容区 -->
    <div id="main-content">
        <div id="top-alert" class="fixed alert alert-error" style="display: none;">
            <button class="close fixed" style="margin-top: 4px;">&times;</button>
            <div class="alert-content">这是内容</div>
        </div>
        <div id="main" class="main">
            
            <!-- nav -->
            <?php if(!empty($_show_nav)): ?><div class="breadcrumb">
                <span>您的位置:</span>
                <?php $i = '1'; ?>
                <?php if(is_array($_nav)): foreach($_nav as $k=>$v): if($i == count($_nav)): ?><span><?php echo ($v); ?></span>
                    <?php else: ?>
                    <span><a href="<?php echo ($k); ?>"><?php echo ($v); ?></a>&gt;</span><?php endif; ?>
                    <?php $i = $i+1; endforeach; endif; ?>
            </div><?php endif; ?>
            <!-- nav -->
            

            
  <!--<script src="jquery.js"></script>-->
  <script src="/Public/Admin/js/jquery.cxselect.min.js"></script>
  <script>
      var URL = "/index.php/Admin/Sport";
      var APP = "/index.php";
      var ROOT = "";
  </script>
  <script type="text/javascript" src="/Public/static/uploadify/jquery.uploadify.min.js"></script>

    <div class="main-title">
        <h2>编辑体育馆</h2>
    </div>
    <form action="<?php echo U(Sport/gymAdd);?>" method="post" class="form-horizontal">
        <div class="form-item">
            <label class="item-label">体育馆名称<span class="check-tips"></span></label>
            <div class="controls">
                <input type="text" class="text input-large" name="name" value="<?php echo ($gym["name"]); ?>">
            </div>
        </div>
        <input type='hidden' name='gid' value='<?php echo ($gym["id"]); ?>'>
        <div class="form-item">
            <label class="item-label">区域选择<span class="check-tips"></span></label>
            <div class="controls">
            <div id="element_id">
                <select class="province" data-value="<?php echo ($gym["province"]); ?>" name='province'></select>
                <select class="city" data-value="<?php echo ($gym["city"]); ?>" name='city'></select>
                <select class="area" data-value="<?php echo ($gym["area"]); ?>" name='area'></select>
            </div>
<script>
// 设置全局默认值，需在引入 <script src="jquery.cxselect.js"> 之后，调用之前设置 
$.cxSelect.defaults.url = '/Public/Admin/js/cityData.min.json'; // 提示：如果服务器不支持 .json 类型文件，请将文件改为 .js 文件 
$.cxSelect.defaults.nodata = 'none';     
// selects 为数组形式，请注意顺序 
$('#element_id').cxSelect({ 
    selects: ['province', 'city', 'area'], 
    nodata: 'none' 
}); 
 

</script>
            </div>
        </div>
        <div class="form-item">
            <label class="item-label">街道地址</label>
            <div class="controls">
                <input type="text" class="text input-large" name="address" value="<?php echo ($gym["address"]); ?>">
            </div>
        </div>
         <div class="form-item">
            <label class="item-label">场馆类型选择<span class="check-tips"></span></label>
            <div class="controls">
                <select name="type">
                     <option value="0">请选择</option>
                <?php if(is_array($sportType)): $i = 0; $__LIST__ = $sportType;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($vo["id"] == $gym['type']): ?>selected<?php endif; ?>><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
            </div>
        </div>
        <div class="form-item">
            <label class="item-label">从属管理员选择<span class="check-tips"></span></label>
            <div class="controls">
                <select name="adminids">
                 <option value="0">请选择</option>
                <?php if(is_array($users)): $i = 0; $__LIST__ = $users;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($vo["id"] == $gym['adminids']): ?>selected<?php endif; ?> ><?php echo ($vo["username"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
            </div>
        </div>
        <div class="form-item">
            <label class="item-label">预订配置选择<span class="check-tips"></span></label>
            <div class="controls">
                <select name="orderconfigid">
                <option value="0">请选择</option>
                <?php if(is_array($orderConfig)): $i = 0; $__LIST__ = $orderConfig;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($vo["id"] == $gym['orderconfigid']): ?>selected<?php endif; ?>>最低<?php echo ($vo["minhour"]); ?>小时-最多<?php echo ($vo["maxhour"]); ?>小时--最多<?php echo ($vo["maxplace"]); ?>个场地</option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
            </div>
        </div>
        <div class="form-item">
            <label class="item-label">价格配置选择<span class="check-tips"></span></label>
            <div class="controls">
             <select name="priceconfigid" id="priceconfigid">
                <?php if(is_array($priceConfig)): $i = 0; $__LIST__ = $priceConfig;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if($vo["id"] == $gym['priceconfigid']): ?>selected<?php endif; ?>><?php echo ($vo["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>  
            </select>
      <div class="data-table table-striped"  id="priceTable">
          <table class="" style="width:25%">
       <thead>
            <tr>
                    <th class="">起止时间</th>
                    <th class="">价格</th>
            </tr>
         </thead>
    <tbody id="detailList">
    </tbody>
    </table>
              </div>    
            </div>
        </div>
        <div class="form-item">
            <label class="item-label">图标<span class="check-tips"></span></label>
             <div class="controls">
            <input type="file" id="upload_picture_logo">
            <input type="hidden" name="logo" id="cover_id_logo"/>
            <div class="upload-img-box">
            
            </div>
            <img src="<?php echo ($gym["logo"]); ?>">
    </div>
    <script type="text/javascript">
    //上传图片
/* 初始化上传插件 */
    $("#upload_picture_logo").uploadify({
        "height"          : 30,
        "swf"             : "/Public/static/uploadify/uploadify.swf",
        "fileObjName"     : "download",
        "buttonText"      : "上传图片",
        
        
        "uploader"        : "<?php echo U('File/uploadPicture',array('session_id'=>session_id()));?>",
        "width"           : 120,
        'removeTimeout'	  : 1,
        'fileTypeExts'	  : '*.jpg; *.png; *.gif;',
        "onUploadSuccess" : uploadPicturelogo,
        'onFallback' : function() {
            alert('未检测到兼容版本的Flash.');
        }
    });
    function uploadPicturelogo(file, data){
        var data = $.parseJSON(data);
        var src = '';
        if(data.status){
                $("#cover_id_logo").val(data.path);
                src = data.url || '' + data.path
                $("#cover_id_logo").parent().find('.upload-img-box').html(
                        '<div class="upload-pre-item"><img src="' + src + '"/></div>'
                );
        } else {
                updateAlert(data.info);
                setTimeout(function(){
                $('#top-alert').find('button').click();
                $(that).removeClass('disabled').prop('disabled',false);
            },1500);
        }
    }
    </script>
        </div>
          <div class="form-item">
            <label class="item-label">联系人<span class="check-tips"></span></label>
            <div class="controls">
                <input type="text" class="text input-large" name="linkman" value="<?php echo ($gym["linkman"]); ?>">
            </div>
        </div>
          <div class="form-item">
            <label class="item-label">联系电话<span class="check-tips"></span></label>
            <div class="controls">
                <input type="text" class="text input-large" name="telephone" value="<?php echo ($gym["telephone"]); ?>">
            </div>
        </div>
         <div class="form-item">
            <label class="item-label">排序<span class="check-tips"></span></label>
            <div class="controls">
                <input type="text" class="text input-large" name="sort" value="<?php echo ($gym["sort"]); ?>">
            </div>
        </div>
          <div class="form-item">
            <label class="item-label">描述 </label>
            <div class="controls">
            <label class="textarea input-large">
                    <textarea name="description"><?php echo ($gym["description"]); ?></textarea>
            </label>				
            </div>
		</div>
         <div class="form-item">
            <label class="item-label">备注 </label>
            <div class="controls">
            <label class="textarea input-large">
                    <textarea name="mark"><?php echo ($gym["mark"]); ?></textarea>
            </label>				
            </div>
		</div>
        <div class="form-item">
            <button class="btn submit-btn ajax-post" id="submit" type="submit" target-form="form-horizontal">确 定</button>
            <button class="btn btn-return" onclick="javascript:history.back(-1);return false;">返 回</button>
        </div>
    </form>

        </div>
        <div class="cont-ft">
            <div class="copyright">
                <div class="fl">感谢使用<a href="http://www.onethink.cn" target="_blank">OneThink</a>管理平台</div>
                <div class="fr">V<?php echo (ONETHINK_VERSION); ?></div>
            </div>
        </div>
    </div>
    <!-- /内容区 -->
    <script type="text/javascript">
    (function(){
        var ThinkPHP = window.Think = {
            "ROOT"   : "", //当前网站地址
            "APP"    : "/index.php", //当前项目地址
            "PUBLIC" : "/Public", //项目公共目录地址
            "DEEP"   : "<?php echo C('URL_PATHINFO_DEPR');?>", //PATHINFO分割符
            "MODEL"  : ["<?php echo C('URL_MODEL');?>", "<?php echo C('URL_CASE_INSENSITIVE');?>", "<?php echo C('URL_HTML_SUFFIX');?>"],
            "VAR"    : ["<?php echo C('VAR_MODULE');?>", "<?php echo C('VAR_CONTROLLER');?>", "<?php echo C('VAR_ACTION');?>"]
        }
    })();
    </script>
    <script type="text/javascript" src="/Public/static/think.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/common.js"></script>
    <script type="text/javascript">
        +function(){
            var $window = $(window), $subnav = $("#subnav"), url;
            $window.resize(function(){
                $("#main").css("min-height", $window.height() - 130);
            }).resize();

            /* 左边菜单高亮 */
            url = window.location.pathname + window.location.search;
            url = url.replace(/(\/(p)\/\d+)|(&p=\d+)|(\/(id)\/\d+)|(&id=\d+)|(\/(group)\/\d+)|(&group=\d+)/, "");
            $subnav.find("a[href='" + url + "']").parent().addClass("current");

            /* 左边菜单显示收起 */
            $("#subnav").on("click", "h3", function(){
                var $this = $(this);
                $this.find(".icon").toggleClass("icon-fold");
                $this.next().slideToggle("fast").siblings(".side-sub-menu:visible").
                      prev("h3").find("i").addClass("icon-fold").end().end().hide();
            });

            $("#subnav h3 a").click(function(e){e.stopPropagation()});

            /* 头部管理员菜单 */
            $(".user-bar").mouseenter(function(){
                var userMenu = $(this).children(".user-menu ");
                userMenu.removeClass("hidden");
                clearTimeout(userMenu.data("timeout"));
            }).mouseleave(function(){
                var userMenu = $(this).children(".user-menu");
                userMenu.data("timeout") && clearTimeout(userMenu.data("timeout"));
                userMenu.data("timeout", setTimeout(function(){userMenu.addClass("hidden")}, 100));
            });

	        /* 表单获取焦点变色 */
	        $("form").on("focus", "input", function(){
		        $(this).addClass('focus');
	        }).on("blur","input",function(){
				        $(this).removeClass('focus');
			        });
		    $("form").on("focus", "textarea", function(){
			    $(this).closest('label').addClass('focus');
		    }).on("blur","textarea",function(){
			    $(this).closest('label').removeClass('focus');
		    });

            // 导航栏超出窗口高度后的模拟滚动条
            var sHeight = $(".sidebar").height();
            var subHeight  = $(".subnav").height();
            var diff = subHeight - sHeight; //250
            var sub = $(".subnav");
            if(diff > 0){
                $(window).mousewheel(function(event, delta){
                    if(delta>0){
                        if(parseInt(sub.css('marginTop'))>-10){
                            sub.css('marginTop','0px');
                        }else{
                            sub.css('marginTop','+='+10);
                        }
                    }else{
                        if(parseInt(sub.css('marginTop'))<'-'+(diff-10)){
                            sub.css('marginTop','-'+(diff-10));
                        }else{
                            sub.css('marginTop','-='+10);
                        }
                    }
                });
            }
        }();
    </script>
    
    <script src="/Public/Admin/js/priceInit.js"></script>
    <script src="/Public/Admin/js/priceConfig.js"></script>
    <script type="text/javascript">
        //导航高亮
        highlight_subnav('<?php echo U('User/index');?>');
    </script>

</body>
</html>