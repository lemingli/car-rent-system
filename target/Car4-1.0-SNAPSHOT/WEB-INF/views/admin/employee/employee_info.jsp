<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script>!function(a,b,c,d,e){a[c]=a[c]||{},a[c].env="",a[c].id=d,a[c].st=(new Date).getTime(),a[c].env="test"==a[c].env||"test2"==a[c].env||"pre"==a[c].env?a[c].env:"";var f=[],g=b.createElement("script");g.onload=g.onreadystatechange=function(){if(!g.readyState||/loaded|complete/.test(g.readyState)){g.onload=g.onreadystatechange=null;var a=f.length;if(0==a)return!1;for(var b=0;b<a;b++)"[object Function]"===Object.prototype.toString.call(f[b])&&f[b]()}},g.src="//lc"+a[c].env+".ucarinc.com/lc.js";var h=b.getElementsByTagName("script")[0];h.parentNode.insertBefore(g,h),a[c].putEvt=function(b){return a[c].putBe?(b&&b(),!1):void f.push(b)},a[c].types=e;for(var i=0;i<a[c].types.length;i++)if("pe"==a[c].types[i]){var j=[];a.onerror=function(b,d,e,f){j.push("m="+b+"&u="+d+"&l="+e+"&r="+f),a[c].initPe=j.join(",")};break}}(window,document,"LCTJ","eeffffff",["rc","pe","rt","cl","se"]);</script>

    <title>神州租车——全球租车领导品牌</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="租车,租车网,租车公司,汽车租赁">
    <meta name="description" content="神州租车，天天有新车，新用户得150元！全国1000+服务网点,100+车型,100%车险,无限里程!周租月租6折起,24小时服务,手续便捷,还能免费上门送取.Tel:400-616-6666">
<!-- 新版所用css文件 -->
    <link href="${ctx }/resources/css/employee_info.css" rel="stylesheet" type="text/css"/>

</head>
<body class="bodycolor zc_cft">

<!--my main start -->


  <div class="zc_myright fr">
    	<!-- 顺风车短信列表 -->

    	<!-- 订单列表开始了 -->
        <div class="orderlist_bd">
            <h2>
                    员工表
            </h2>
            
            <div class="h20"></div>
            <div class="subbox_m"></div>
            
            <div class="zc_myorder_info">
                    <table class="zc_table_order" cellpadding="0" cellspacing="0" border="0">
                        <thead>
                        <tr>
                            <th class="al">员工信息</th>
                            <th width="192"></th>
                            <th class="ac" width="258">进入公司时间</th>
                            <th class="ac" width="110">职位</th>
                            <th class="ac" width="110">所属门店</th>
                            <th class="ac" width="110">状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <img src="file:///Users/taoran/Desktop/aoteman.png" width="125" height="164">
                            </td>
                            <td class="ol-carinfo">
                                <b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp奥特曼</b>
                                <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp男|45岁|18755176058</p>
                            </td>
                            <td>
                                <div class="ol-aggregate"><span>2018年1月1日</span></div>
                            </td>
                            <td>
                                <div class="ol-aggregate"><span>修理员</span></div>
                            </td>
                            <td>
                                <div class="ol-aggregate"><span>门店A</span></div>
                            </td>
                            <td>
                                <div class="ol-aggregate"><span>离职</span></div>
                            </td>
                        </tr>
                        
                        </tbody>
                    </table>

            </div>
            <div class="sz_page_box">
                <div class="sz_page">
                    <!--分页开始 -->
<div class="sz_page">
                <a href="/queryOrder/queryOrder.do?page=1"
             class="on" >1
            </a>
</div>  					<!--分页结束 -->
                </div>
            </div>
        </div>
        
    </div>
    <div class="clear"></div>
    <input id='self_order_success' type="hidden" value="预订成功">
	<input id='self_wating_payment' type="hidden" value="等待付款">
	<input id='self_handling' type="hidden" value="处理中">
	<input id='self_leasing' type="hidden" value="租赁中">
	<input id='self_cancel' type="hidden" value="已取消">
	<input id='self_prove_fail' type="hidden" value="审核未通过">
	<input id='memName' type="hidden" value="陶然">

<input type="hidden" id="source" name="source" value="">
<input type="hidden" id="calendar" />
<input type="hidden" id="datepicker" />
<input type="hidden" id="showTimeClear" value="">
<input type="hidden" id="referCount" value="0">
<!--my main end -->


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
    seajs.use(['divided/mm/entry/jQ@a576d97fa6','divided/mm/entry/lib@3b38d9541c'],function(){
            seajs.use(['divided/mm/entry/ordermanage/selfDrivingOrder@b428bc5856']); //引入js
        });
</script>
<script id="orderHistoryTpl" type="text/x-jsrender">
<table class="zc_trace_table">
  <tbody>
  {{for historyOrderList}}
  <tr>
   <td width="125" class="pl20">{{>oper_time}}</td>
   <td width="200">
   {{if pickup_dep && pickup_dep.length}}
      {{>fromCity}} - {{>pickup_dep}}       
      <p>{{>estimate_pickup_time}}</p>
   {{/if}}
   </td>
   <td width="200">
    {{if return_dep && return_dep.length}}
       {{>toCity}} - {{>return_dep}}    
       <p>{{>estimate_return_time}}</p>
    {{/if}}
  </td>
  <td width="150">
    {{if short_name && short_name.length}}
    <p>{{>short_name_1}}</p>
    <p>{{>short_name_2}} | 乘坐{{>seat}}人 </p>
    {{/if}}
  </td>
  <td>
   {{if historyStateName eq SELF_ORDER_SUCCESS}}
       <span class="s-green">{{>historyStateName}} </span>
       {{else historyStateName eq SELF_WATING_PAYMENT}}
       <span class="s-orange">{{>historyStateName}} </span>
        {{else historyStateName eq SELF_HANDLING || historyStateName eq SELF_LEASING}}
       <span class="s-blue">{{>historyStateName}} </span>
       {{else historyStateName eq SELF_COMPLETE}}
       <span class="s-yellow">已完成</span>
        {{else}}
       <span class="s-gray">{{>historyStateName}}</span>
  {{/if}}
  </td>
  </tr>
 {{/for}}
</tbody>
</table>
</script>
</body>
</html>       