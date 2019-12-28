<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script>!function(a,b,c,d,e){a[c]=a[c]||{},a[c].env="",a[c].id=d,a[c].st=(new Date).getTime(),a[c].env="test"==a[c].env||"test2"==a[c].env||"pre"==a[c].env?a[c].env:"";var f=[],g=b.createElement("script");g.onload=g.onreadystatechange=function(){if(!g.readyState||/loaded|complete/.test(g.readyState)){g.onload=g.onreadystatechange=null;var a=f.length;if(0==a)return!1;for(var b=0;b<a;b++)"[object Function]"===Object.prototype.toString.call(f[b])&&f[b]()}},g.src="//lc"+a[c].env+".ucarinc.com/lc.js";var h=b.getElementsByTagName("script")[0];h.parentNode.insertBefore(g,h),a[c].putEvt=function(b){return a[c].putBe?(b&&b(),!1):void f.push(b)},a[c].types=e;for(var i=0;i<a[c].types.length;i++)if("pe"==a[c].types[i]){var j=[];a.onerror=function(b,d,e,f){j.push("m="+b+"&u="+d+"&l="+e+"&r="+f),a[c].initPe=j.join(",")};break}}(window,document,"LCTJ","eeffffff",["rc","pe","rt","cl","se"]);</script>

    <title>佳朋租车|方便您的出行</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="租车,租车网,租车公司,汽车租赁">
    <meta name="description" content="神州租车，天天有新车，新用户得150元！全国1000+服务网点,100+车型,100%车险,无限里程!周租月租6折起,24小时服务,手续便捷,还能免费上门送取.Tel:400-616-6666">
<!-- 新版所用css文件 -->
<link rel="stylesheet" type="text/css" href="https://css.zuchecdn.com/divided/mm/entry/main@cfc1247b20.css" />	
</head>
<body class="bodycolor zc_cft">
<!--head start -->

<input type = "hidden" id="mebId" value = '23688536'>

<form action="https://passport.zuche.com/memberManage/xtoploginMember.do" id="loginTopForm" target="_parent" method="post">
	<input type="hidden" id="act" name="act" value="loginSys"/>
	<input type="hidden" id="historyLocation" name="historyLocation" />
</form>


<!--my main start -->
<div class="zc_main zc_mycon">

<div class="zc_myleft fl">
      <dl class="meberlist">
          <dt>我的订单</dt>
          <dd id="orderTitle"><a  onclick="window.location.href='${ctx}/order/my-order-manage'">短租自驾
      </dl>
      
      <dl class="meberlist" id="accountTitle">
      	<a href="javascript:void(0);" onclick="window.location.href='/queryOrder/queryOrder.do'">
          <dt id="accountTitle">我的账户</dt>
        </a>
      <dd class="ma1">
      	<a href="/member/person/personinfo.do">我的信息</a>
      </dd>
      </dl>
     
      
</div>    <div class="zc_myright fr">
        <div class="zc_ipttitle_bd zc_coltdinfo" >
            <h2>我的信息</h2>
            <div id="originalDiv" class="upload_pictures">
            <form id="myinfoForm" enctype="multipart/form-data" >
                <ul>
                    <li>
                    	<div class="p-re" id="errorTip1" style="z-index:20"></div>
                    	<div class="p-re" id="verifyCardErrorTip" style="z-index:20"></div>
                        <label class="fl">姓名</label>
                        <span class="fl">陶然</span>
                        <div class="fr">真实姓名，方便租车时核对身份</div>
                        <div class="clear"></div>
                    </li>
                    <!-- 证件号输入后 -->
                        <li class="cards_info">
                            <label class="fl">身份证</label>
                            <span class="fl cards_show"> 12345678910JQKA2</span>
                            <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        </li>
                            
                    <li>
                        <label class="fl">手机号码</label>
                        <span class="fl fc_c6" id="xmobile">18755176058</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                    <li>
                        <label class="fl">email</label>
                        <span class="fl fc_c6" id="xmobile">1234567@hfut.edu.cn</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                    <li>
                        <label class="fl">自我介绍</label>
                        <span class="fl fc_c6" id="xmobile">我是世界上最帅的人</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                    <li>
                        <label class="fl">地址</label>
                        <span class="fl fc_c6" id="xmobile">安徽省合肥市合肥工业大学1号南楼406</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                    
                    <li>
                        <label class="fl">生日</label>
                        <span class="fl fc_c6" id="xmobile">1997年5月8日</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                    <li>
                        <label class="fl">创建时间</label>
                        <span class="fl fc_c6" id="xmobile">2018年1月1日</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                    <li>
                        <label class="fl">职业</label>
                        <span class="fl fc_c6" id="xmobile">学生</span>
                        <div class="fr" id="modifyToggle" ><a href="javascript:void(0)">修改</a></div>
                        <div class="clear"></div>
                    </li>
                    
                </ul>

                <!-- <div class="graybutbox">
                    <a href="javascript:void(0);" class="zc_orange_bigsub" id="zcsave">保存</a>
                </div> -->
            </form>
                <div class="h20"></div>
		</div>
		<div class="zc_mysucceed_bd" id="modifySuccess" style="display:none">
            <p class="rok-lcongra pb0"><span class="zc-gryes"></span>您已经成功修改个人信息，请妥善保管</p>
            <p class="ac gray16">如需任何帮助，欢迎致电神州租车24小时全国客服中心 400-616-6666.</p>
            <p class="ac"><a class="zc_orange_bigsub" href="https://mycar.zuche.com/member/person/personinfo.do">返回</a></p>
        </div>
      </div>
   </div>
   <div class="clear"></div>
</div>
<div id="isContinue"  style="width:520px;height:245px;display:none;" class="popup_block" >
	<h1 class="f18h1 ac black pb20" style="margin-top:15px">温馨提示</h1>
	<a href="#" onclick="closeBg('isContinue');" style="position:absolute;right:0;top:0;" id="closeBg">
		<img src="https://image.zuchecdn.com/newversion/common/close.png">
	</a>
	<div class="ac f14w m20_0 pt20 pb20">您是企业用户,修改邮箱可能会导致与企业失去关联!</div>
	<div style="text-align:center;margin-top:25px;">
	<input type="button" value="确定" class="btn_bluewauto white f14w w80" onclick="reSetBsnEmail()">
	<input type="button" value="取消" class="btn_graywauto gray f14w  w80" onclick="cacleEmailModify()">
	</div>
</div>
<div id="isRelate" style="width:520px;height: 245px;display:none;" class="popup_block" >
	<input id="xbemail" type="hidden" />
	<h1 class="f18h1 ac black pb20" style="margin-top:15px">温馨提示</h1>
	<a href="#" onclick="know();" style="position:absolute;right:0;top:0;" id="closeBg">
		<img src="https://image.zuchecdn.com/newversion/common/close.png">
	</a>
	<div class="ac f14w m20_0 pt20 pb20">您是否要将您的账户关联到<span id="bcName"></span>企业下？如果是，激活邮件已发送，请注意查收！</div>
	<div style="text-align:center;margin-top:25px;">
	<input name="" type="button" value="知道了" class="btn_bluewauto white f14w w80" onclick="know();">
	</div>
</div>
<div class="bg_zhezhao" style="display: none;"></div>
<div class="zc_yzm_alert" style="display: none;">
	<div class="top">
		<p>请先输入以下验证码，获取手机动态码</p>
		<span class="yzm-close zc-close" id="alertclose"></span>
	</div>
	<ul class="yzmul">
		<li class="zc-iptbox" 	>
			<label><span class="zc-iyzm"></span></label>
			<input class="zc-iptsht t_val" id="xyzm" type="text" value="请输入右侧验证码" maxlength="6" style="width:145px;color: rgb(147, 147, 158);">
			<span class="pic-yzm"><img id="kaptchaImage" ><i class="zc-fresh" id="changeYzmBT"></i></span>
			<div class="input-errlog ipt-err" id="codecheck_tips" style="display: none;">
				<span class="arrowbox">◆<span class="arrow">◆</span></span>
				<span class="zc-retan"></span>
				<i class="pl0"></i>
				<span class="zc-close"></span>
			</div>
		</li>	
	</ul>
	<div class="btndiv">
		<a class="zc-btn btn-confirm" id="yzmconfirm">确认</a>
	</div>

</div>
</div><div id="showCancle" class="popup_block areaSelection" style="display: none;width: 500px;">
	<a href="javascript:masklayer.closeBg('showCancle');" class="close" id="closeBg">&nbsp;</a>
	<h1 class="f18h1 pc_masklayer_b">&nbsp;&nbsp;&nbsp;&nbsp;解除关联</h1>
	<div class="pc_sfzbox p20_0">
		<p class="f14w p20" style="color:#e89013;">你确定与企业账号解除关联？一经解除你将不再享受企业专属折扣。</p>
	</div>
	<div class="p20 ac">
		<input name="" type="button" value="&nbsp;&nbsp;&nbsp;确定解除&nbsp;&nbsp;&nbsp;" class="btn_bluewauto white f14w" onclick="javascript:showCancel();" >
	</div>
</div>
<div id="popbox"  style="width:250px;height:160px;display:none;position:absolute;top:50%;left:50%;margin-left:-150px;margin-top:-100px;background:#FFF;z-index:3;">
<h1 class="f18h1 pc_masklayer_b" style="position: relative;border-bottom:solid 1px #ccc;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;温馨提示
	<a style="position:absolute;right: 10px;top:-4px;*+top:6px;" id="closeBgBT"><img src="https://image.zuchecdn.com/newversion/common/gray_x.png"></a>
</h1>
	<div class="pc_bd" style="padding-bottom:10px;">
	<p id="ppopbox" class="ac pt20 f14">退订成功</p>
		<ul class="m0_auto" style="padding-left:110px;align:center">
			<li class="height20" style="padding-left:85px;">
            	<div class="red f12 rebwrong_icon"  id="yzmInfo"></div>
           	</li>
		</ul>
	</div>
	<div class="pb30 ac">
		<input id='finishBT' name="" type="button" value="确定" class="btn_bluewauto white f14w w80" >
	</div>
</div>
<!-- 隐藏域 -->
<input type="hidden" id="member" value="23688536">
<input type="hidden" id="currentDate" value="2018-07-05" />
<input type="hidden" id="memberid" value="">
<input type="hidden" id="xid" value="23688536">
<input type="hidden" id="carwsztoneURL" value="https://carbusiness.zuche.com">
<input type="hidden" id="success" value="">
<input type="hidden" id="error" value="">
<input type="hidden" id="membernameHidden" value='陶***'>




<script type="text/javascript">
	var carwrmURL='https://static.zuchecdn.com';
	var carwrmjsURL = 'https://js.zuchecdn.com';
	var carwrmimageURL = 'https://image.zuchecdn.com';
	var carwrmcssURL = 'https://css.zuchecdn.com';
	var carwlomURL = "https://changzu.zuche.com";
	var carwcmsURL='https://huodong.zuche.com';
	var carwdmURL = "https://service.zuche.com";
	var carwepmURL='https://carbusiness.zuche.com';
	var carwlmURL='https://passport.zuche.com';
	var carwmmURL = "https://mycar.zuche.com";
	var carwsomURL='https://www.zuche.com';
	var enURL='https://en.zuche.com';
	var orderURL='https://order.zuche.com';
	var leasingURL='https://leasing.zuche.com';
	var easyrideURL='https://easyride.zuche.com';
	var serviceURL='https://service.zuche.com';
	var carbusinessURL='';
	var driverURL='';
	var carwsztoneURL="https://carbusiness.zuche.com";
	var remarkimgURL="https://remarkimg.zuche.com";
	var internationalURL="https://international.zuche.com";
</script>
<script type="text/javascript" src="https://js.zuchecdn.com/divided/mm/public/lib/sea/sea@68b90934d7.js"></script>
<script type="text/javascript" src="https://js.zuchecdn.com/divided/mm/public/lib/sea/plugin/seajs-preload@11b2cc155e.js"></script>
<script type="text/javascript" src="https://js.zuchecdn.com/divided/mm/seaconfig@6ecc8d0dfe.js"></script>

<script type="text/javascript">
	seajs.use(['divided/mm/entry/jQ@a576d97fa6'],function(){
	    seajs.use([
			'divided/mm/entry/lib@3b38d9541c',
			'divided/mm/entry/common@8b9e21f5c5'
		]);
    });
</script><script type="text/javascript">
    var __currentdatetime = '2018-07-05';
    seajs.use(['divided/mm/entry/jQ@a576d97fa6','divided/mm/entry/lib@3b38d9541c'],function(){
            seajs.use(['divided/mm/entry/accountmanage/personInfo@8e17d023d4']); //引入js
        });
</script>
</body>
</html>