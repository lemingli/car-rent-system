<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
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

<!--my main start -->
<div class="zc_main zc_mycon">

<div class="zc_myleft fl">
        <dl class="meberlist">
          <dt>我的订单</dt>
          <dd id="orderTitle"><a  onclick="window.location.href='${ctx}/order/my-order-manage'">短租自驾
          </a>
          </dd>
      </dl>
      
      <dl class="meberlist" id="accountTitle">
          <dt id="accountTitle1">我的账户</dt>
            <dd class="ma1"><a href="javascript:void(0);" onclick="window.location.href='${ctx}/my-info'">我的信息</a></dd>
      </dl>
      
</div>    <div class="zc_myright fr">
      <!-- 顺风车短信列表 -->

      <!-- 订单列表开始了 -->
        <div class="orderlist_bd">
            <h2>
                    自驾订单
            </h2>
            
            <div class="h20"></div>
            <div class="subbox_m"></div>
            
            <div class="zc_myorder_info">
                    <table class="zc_table_order" cellpadding="0" cellspacing="0" border="0">
                        <thead>
                        <tr>
                            <th class="al">订单信息</th>
                            <th width="192"></th>
                            <th class="al" width="258">取/还车信息</th>
                            <th class="ac" width="110">总计</th>
                            <th class="ac" width="110">订单状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="order" items="${order}">
                        <tr>
                            <td>
                                
                                <img src="https://fimg.zuchecdn.com/upload/web/modepic/87.jpg" width="166" height="97">
                            </td>
                            <td class="ol-carinfo">
                                <b>
                                        雪佛兰科鲁兹
                                </b>
                                <p>
                                        三厢/1.5自动 |
                                     乘坐5人</p>
                                
                            </td>
                            <td>
                                <div class="ol-caraddress" style="cursor:default;">
                                    <p class="qhicon zctooltip" title="合肥 - 新桥机场店">
                                      <i class="zc_fetch_i"></i>合肥 - 新桥机场店
                                    </p>
                                    <p class="qhtime">2018-07-06 10:00</p>
                                    <p class="qhicon zctooltip" title="合肥 - 新桥机场店">
                                    <i class="zc_giveback_i"></i>合肥 - 新桥机场店
                                    </p>
                                    <p class="qhtime">2018-07-08 10:00</p>
                                          
                                </div>
                            </td>
                            <td>
                                <div class="ol-aggregate">¥<span>289</span>
                                </div>
                            </td>
                            <td class="ac">
                <span class="s-gray">已取消</span>
                            </td>
                        </tr>
                        </c:forEach>
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
</div>            <!--分页结束 -->
                </div>
            </div>
        </div>
        <div class="orderstate_bd">
            <h3>订单状态说明</h3>
            <ul>
                <li>
                    <span class="s-green">预订成功</span>
                    <p>订单已确认，尚未提车</p>
                </li>
                <li>
                    <span class="s-orange">等待付款</span>
                    <p>订单尚未付款，请在1小时内完成支付</p>
                </li>
                <li>
                    <span class="s-blue">处理中</span>
                    <p>您的订单已提交，正在处理中</p>
                </li>
                <li>
                    <span class="s-blue">租赁中</span>
                    <p>车辆正在租赁过程中</p>
                </li>
                <li>
                    <span class="s-orange">待评价</span>
                    <p>订单完成48小时内，可对我们做出评价</p>
                </li>
                <li>
                    <span class="s-yellow">已完成</span>
                    <p>已还车，订单结算完毕</p>
                </li>
                <li>
                    <span class="s-gray">已取消</span>
                    <p>订单已经取消</p>
                </li>
            </ul>
        </div>
        <div class="notice_bd">
            <h3>注意事项</h3>
            <p>1. 修改或取消订单，请您尽早致电400 616 6666申请，送车上门或服务点订单请至少在我们的工作时间内（08:00-20:00）提前2小时修改；</p>
            <p>2. 预付订单，逾时不履行或取消的，退还您预付款中的基础服务费、手续费及可选服务费款项，已付费用将作为违约金恕不退还；</p>
            <p>3. 系统将为您保留一年之内的订单，如需查询更早的订单，请致电24小时热线。</p>
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
</div>
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