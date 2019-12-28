<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <script type="text/javascript" src="/4QbVtADbnLVIc/d.FxJzG50F.js?D9PVtGL=7090ee" r='m'></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description"
          content="神州租车">
    <meta name="keywords" content="租车,租车网,租车公司,汽车租赁">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>佳朋租车|方便您的出行</title>
    <link href="${ctx }/resources/css/xuan_che.css" rel="stylesheet" type="text/css"/>
</head>
<body class="bodycolor">
<input type="hidden" id="currentDateStr" name="currentDateStr" value="2018-07-02 11:04">

<input type="hidden" id="sessionOrderProcess" value=''>
<input type="hidden" id="sessionOrderFirstorderNo" value=''>
<input type="hidden" id="sessionOrderFirstOrderId" value=''>
<input type="hidden" id="mebId" value=''>

<%--</form>--%>
<script>
    <%--function selectCar() {--%>


    <%--var type = {};--%>
    <%--type.car_model = $("#car_model").val();--%>
    <%--type.car_price = $("#car_price").val();--%>
    <%--type.car_brand = $("#car_brand").val();--%>


    <%--$.ajax({--%>
    <%--type: 'get',--%>
    <%--url: ctx + '/select-car/{car_model}',--%>
    <%--data: JSON.stringify(type),--%>
    <%--contentType: 'application/json',--%>
    <%--dataType: 'json',--%>
    <%--success: function (result) {--%>

    <%--if (result.resultCode === 200) {--%>
    <%--window.location.href = "${ctx}/admin/car-manage";--%>
    <%--} else {--%>
    <%--layer.msg(result.resultMessage)--%>
    <%--}--%>

    <%--},--%>
    <%--error: function () {--%>
    <%--layer.msg("出错了")--%>
    <%--//中间发生异常，具体查看xhr.responseText--%>
    <%--}--%>
    <%--});--%>

    <%--}--%>

</script>

<div class="zc_head_bd">

    <div class="zcindex_login">
        <div class="wdl" id="notLogin">
            <a href="javascript:void(0);" class="colfabe00" id="loginBT">登录</a>
            <b>/</b>
            <a href="https://passport.zuche.com/memberManage/xtoploginMember.do?act=registerSys"
               class="colfabe00">注册</a>
        </div>
    </div>

</div>


<div class="zc_main zc_carcon">
    <div class="zc_leftlist fl">
        <div class="zc_boxshd lchoose_box">
            <div class="cl-lbox bdbtm Model">
                <p class="zc_left_title">车型</p>
                <ul class="car_model">
                    <li class="orderlevelcheck filter_level all">
                        <a id="zc_cx_bx" name="car_model" class=" cxdefault" onclick="selectCar()">
                            <i class="zc_cx_bx"></i>
                            <i class="cartxt">不限</i>
                        </a>
                    </li>

                    <li class="orderlevelcheck filter_level brandname">
                        <a id="zc_cx_jj" name="car_model" href="javascript:void(0);"
                           onclick="javascript:location.href='${ctx}/select-car/1'" ;class="checked">
                            <i class="zc_cx_jj"></i>
                            <i class="cartxt">经济型</i>
                        </a>
                    </li>

                </ul>
            </div>
            <div class="cl-lbox bdbtm price">
                <p class="zc_left_title">价格 <span class="sma12">(元)</span></p>
                <ul class="pri_range">
                    <li class="bar1 orderlevelcheck filter_rent_money all"><a class="checked jgdefault" data="0-*"><span
                            class="w40"></span></a></li>
                    <li class="bar2 prli orderlevelcheck filter_rent_money"><a href="javascript:void(0);"
                                                                               data="0-150"><span
                            class="w40"></span></a></li>
                    <li class="bar3 prli orderlevelcheck filter_rent_money"><a href="javascript:void(0);"
                                                                               data="150-300"><span class="w40"></span></a>
                    </li>

                </ul>
                <ul class="pri_num">
                    <li class="pri1 w37 checked jgdefault">不限</li>
                    <li class="pri2 w35 numli">0</li>
                    <li class="pri3 w42 numli">150</li>
                    <li class="pri4 w42 numli">300</li>

                </ul>
            </div>
            <div class="cl-lbox bdbtm Brand">
                <p class="zc_left_title">品牌</p>
                <ul class="car_brand">
                    <li class="orderlevelcheck filter_brand all"><a class="checked ppdefault">不限</a></li>
                    <li class="orderlevelcheck filter_brand brandname"><a href="javascript:void(0);" data="12">奥迪</a>
                    </li>
                    <li class="orderlevelcheck filter_brand brandname"><a href="javascript:void(0);" data="2">东风标致</a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="empty_choose"></div>

        <div class="zc_boxshd cl-lbox mt10 lmap_box">
            <p class="zc_left_title f14">门店信息</p>

            <dl class="storedl">
                <dt>
                    <font size="3">送车点名称:</font>
                    <font size="3">${store.store_name}</font>
                </dt>
                <dt>地址:</dt>
                <dd>${store.store_address}</dd>
                <dt class="oline">营业时间:
                    <span class="yel">${store.open_time}</span>
                </dt>
                <dt class="oline">门店电话:
                    <span>${store.store_phone}</span>
                </dt>

                <dt>
                    <font size="3">还车点名称:</font>
                    <font size="3">${store.store_name}</font>
                </dt>
                <dt>地址:</dt>
                <dd>${store.store_address}</dd>
                <dt class="oline">营业时间:
                    <span class="yel">${store.open_time}</span>
                </dt>
                <dt class="oline">门店电话:
                    <span>${store.store_phone}</span>
                </dt>
                <dd id="commentInfoDiv"></dd>

            </dl>
        </div>

    </div>

    <div class="zc_rightlist fr">
        <div class="zc_boxshd minhght">
            <div class="clist_ct ">
                <table class="clist_tb" cellpadding="0" cellspacing="0" border="0">
                    <tbody class="carList">
                    <c:forEach var="carType" items="${carType}">
                        <tr class="clist_tr carLi carInfo101">
                            <td class="pic">
                                <img src="${ctx}/resources/car/612daf0d-202e-4122-913f-fb6cf0bdbe6e.png" alt=""
                                     onclick="" width="230"
                                     height="130">
                            </td>
                            <td class="info">
                                <p class="name">${carType.type_name}</p>
                            </td>
                            <td class="ord">
                                <div class="order_box">
                                    <div class="od_price">
                                        <div class="car_price">
												<span class="pri_ye">
	                             					<em class="rmb">¥</em>
													<em class="num">${carType.price}</em>
	                             					<em class="unit">/日均</em>
	                           					</span>
                                            <div class="sz_priceTotal" style="cursor: pointer;" data="normal"
                                                 modelevel="3"
                                                 modeid="87" ss="">
                                                <div class="fl clear">
	                              						<span class="fl pri_all">
														<em class="total">总价:</em>
														<em class="rmb">¥</em>
														<em class="num">${carType.price}</em>
	                              						</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <a id="bookOrder87" class="od_btn btn_yel zc_bbtn"
                                            onclick="pickCar(${carType.type_id},${carType.price})">租 车</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="clear"></div>

</div>


<div class="zc_foottool">
    <ul>
        <li>
            <a href="javascript:void(0);" onclick="javascript:window.open('http://multimedia.gateway.ucarinc.com:2003/IM/Web/index.html',
            		'newwindow','toolbar=no,scrollbars=yes,resizable=no,top=50%,left=50%,width=800,height=600');">
                <span class="zc_service_i"></span></a>
            <div class="zc_foottooltipe">
                <div class="p-re">
                    <div class="rightsj">◆</div>
                    在线客服
                </div>
            </div>
        </li>
        <li>
            <a href="https://help.zuche.com/" target="_blank"><span class="zc_help_i"></span></a>
            <div class="zc_foottooltipe">
                <div class="p-re">
                    <div class="rightsj">◆</div>
                    帮助中心
                </div>
            </div>
        </li>
        <li>
            <a href="#"><span class="zc_top_i"></span></a>
            <div class="zc_foottooltipe">
                <div class="p-re">
                    <div class="rightsj">◆</div>
                    返回顶部
                </div>
            </div>
        </li>
    </ul>
</div>
<script type='text/javascript' id='bdshare_js' data='type=tools'></script>
<script type='text/javascript' id='bdshell_js'></script>
<script>
    function pickCar(type_id, price) {
        window.location.href = "${ctx}/order/confirm";
        // alert(price+1);
        var order = {};
        <%--order.type_id = type_id;--%>
        order.store_from_id = ${store.store_id};
        order.store_to_id = ${store.store_id};
        location.href='${ctx}/order/confirm/'+type_id+"/"+price+"/"+order.store_from_id+"/"+order.store_to_id;


    }
</script>


</body>

</html>