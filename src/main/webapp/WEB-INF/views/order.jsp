<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/7/5
  Time: 下午9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description"
          content="神州租车，天天有新车，新用户得150元！全国1000+服务网点,100+车型,100%车险,无限里程!周租月租6折起,24小时服务,手续便捷,还能免费上门送取.Tel:400-616-6666">
    <meta name="keywords" content="租车,租车网,租车公司,汽车租赁">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>佳朋租车|方便您的出行</title>

    <link rel="stylesheet" type="text/css" href="https://css.zuchecdn.com/divided/som/entry/service@67dd71912a.css"/>
    <link href="${ctx }/resources/css/jquery.Jcrop.min.css" rel="stylesheet">

    <style>
        .close, .pc_stratum a, .pc_stratum a:hover {
            text-decoration: none
        }

        .businessDept, .businessMember {
            padding: 0 10px;
            line-height: 20px;
            display: inline-block;
            float: left;
            font-size: 14px;
            font-weight: 700;
            margin-top: 27px
        }

        .orderFeeTotal {
            width: 640px
        }

        .pc_stratum {
            border: 2px solid #61a1df;
            position: absolute;
            margin-top: 27px
        }

        .pc_stratum a {
            display: block;
            padding: 8px 0;
            text-align: center;
            color: #c2c2c2;
            border: 1px solid #fff;
            border-bottom: 1px solid #e9f2fa;
            background: #fff
        }

        .pc_stratum a:hover {
            color: #333;
            border: 1px solid #fdb811;
            background: #fff1d6
        }

        * {
            margin: 0;
            padding: 0
        }

        .zhezhao {
            display: none;
            background-image: url(https://image.zuchecdn.com/newversion/common/zhezhao_bg.png);
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            opacity: .65;
            z-index: 999
        }

        .close, .login {
            position: absolute
        }

        .login {
            width: 600px;
            height: 500px;
            top: 50%;
            left: 50%;
            background-color: #fff;
            display: none;
            margin-top: -250px;
            margin-left: -300px;
            z-index: 1500
        }

        .content {
            margin-top: 50px;
            color: red;
            line-height: 200px;
            height: 200px;
            text-align: center
        }

        .lg-title {
            width: 100%;
            height: 35px;
            line-height: 35px;
            font-size: 14px;
            color: #333;
            text-indent: 1em;
            background-color: #E4E4E4
        }

        .lg-inputs {
            margin: 30px 35px 5px;
            padding: 5px 65px 10px 75px;
            line-height: 40px;
            background-color: #fff;
            border-bottom: 1px dotted #ccc
        }

        .lg-bottom {
            margin: 0 20px;
            padding: 0 80px 0 90px;
            line-height: 40px
        }

        .lg-bottom p {
            margin: 0 auto
        }

        .lg-bottom > li > label, .lg-inputs > li > label {
            font-family: MicroSoftYAHEI;
            display: inline-block;
            padding-right: 5px;
            text-align: center;
            vertical-align: middle;
            width: 72px;
            font-size: 12px
        }

        input[type=text], input[type=password] {
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border-radius: 2px;
            vertical-align: middle;
            height: 30px;
            line-height: 30px;
            padding-left: 5px;
            border: 1px solid #e2e2e2
        }

        .lg-bottom li.rebwrong, .lg-inputs li.rebwrong {
            padding: 0 0 1px 80px;
            line-height: 0;
            width: 220px;
            height: 19px
        }

        .close {
            background: url(https://image.zuchecdn.com/newversion/common/close.png) left bottom no-repeat;
            width: 34px;
            height: 34px;
            display: block;
            right: 0;
            top: 0;
            z-index: 9999
        }

        .btn_save > input {
            margin: 8px 83px
        }
    </style>

</head>

<style>
    .cffade {
        display: none;
        background: #000;
        position: fixed;
        left: 0;
        top: 0;
        z-index: 1999999;
        width: 100%;
        height: 100%;
        opacity: .3;
        filter: alpha(opacity=30);
    }

    .config-btn {
        position: absolute;
        top: 10px;
        right: 10px;
        z-index: 10;
        display: inline-block;
        width: 70px;
        height: 24px;
        line-height: 24px;
        background-color: #2b99ff;
        color: #fff;
        font-size: 12px;
        border-radius: 3px;
        cursor: pointer;
    }

    .config-btn:hover {
        background-color: #609fe6;
    }

    .configbox {
        display: none;
        width: 600px;
        height: 380px;
        position: absolute;
        z-index: 2000009;
        top: 50%;
        left: 50%;
        margin-top: -190px;
        margin-left: -300px;
        background-color: #fff;
    }

    .cftitle {
        position: relative;
        height: 47px;
        line-height: 47px;
        background-color: #f3f4f6;
        font-size: 16px;
        color: #60606c;
        border-bottom: 1px solid #e9ebee;
    }

    .cftitle > span {
        display: block;
        padding-left: 15px;
    }

    .cfclose {
        cursor: pointer;
        display: inline-block;
        position: absolute;
        top: 7px;
        right: 7px;
        width: 34px;
        height: 34px;
        background: url(https://image.zuchecdn.com/newversion/common/close.png) no-repeat;
        z-index: 2000019;
    }

    .cflist {
        height: 332px;
        overflow-y: auto;
    }

    .cflist ul {
        width: 560px;
        margin: 0 auto;
        overflow: hidden;
    }

    .cflist ul li {
        float: left;
        width: 280px;
        border-bottom: 1px dashed #e4e6e9;
        font-size: 14px;
        height: 39px;
        line-height: 39px;
        color: #93939e;
    }

    .cflist ul li span {
        color: #2f2f39;
    }

    .cflist ul li b {
        display: inline-block;
        width: 20px;
        margin-right: 5px;
        vertical-align: middle;
    }

    .cflist ul li.nonebd {
        border-bottom: 1px solid #fff;
    }
</style>
<div class="cffade"></div>
<div class="configbox">
    <div class="cftitle">
		<span>
		${carType.type_name}配置信息</span>
        <i class="cfclose"></i>
    </div>
    <div class="cflist">
        <ul>
            <li>
                <b class="zws">&nbsp;</b>品　　牌：
                <span>
                    ${carType.brand}
                </span>
            </li>
            <li>
                <b class="cms">&nbsp;</b>车 门 数：
                <span>
						4
				</span>
            </li>
            <li>
                <b class="rllx">&nbsp;</b>燃料类型：
                <span>
						汽油
				</span>
            </li>
            <li>
                <b class="bsxlx">&nbsp;</b>变速箱类型：
                <span>
                    ${carType.gear_box}
                </span>
            </li>
            <li>
                <b class="pl">&nbsp;</b>排　　量：
                <span>${carType.displacement}</span>
            </li>
            <li>
                <b class="rybh">&nbsp;</b>燃油标号：
                <span>
						92-93汽油
				</span>
            </li>
            <li>
                <b class="qdfs">&nbsp;</b>驱动方式：
                <span>
						前驱
				</span>
            </li>
            <li>
                <b class="fdjjqxs">&nbsp;</b>发动机进气形式：
                <span>
						自然吸气
				</span>
            </li>
            <li>
                <b class="tc">&nbsp;</b>天　　窗：
                <span>
                    ${carType.sunroof}
                </span>
            </li>
            <li>
                <b class="yxrl">&nbsp;</b>油箱容量：
                <span>
                    ${carType.fuel_tankage}
                </span>
            </li>
            <li>
                <b class="yx">&nbsp;</b>音　　箱：
                <span>
                    ${carType.sound_box}
                </span>
            </li>
            <li>
                <b class="zy">&nbsp;</b>座　　椅：
                <span>
                    ${carType.seat}皮革座椅
				</span>
            </li>
            <li>
                <b class="dcld">&nbsp;</b>倒车雷达：
                <span>
						${carType.reverse_sensor}无
				</span>
            </li>
            <li>
                <b class="qin">&nbsp;</b>气　　囊：
                <span>
						2
				</span>
            </li>
            <li class="nonebd">
                <b class="dvd">&nbsp;</b>DVD / CD：
                <span>
						CD
				</span>
            </li>
            <li class="nonebd">
                <b class="gps">&nbsp;</b>GPS导航：
                <span>
						无
				</span>
            </li>
        </ul>
    </div>
</div>
<body class="f2f3f5">
<div class="orderDetails" style="width:auto;">


    <div class="newpg-proce">
        <div class="newpg-con">
            <img src="https://image.zuchecdn.com/newversion/news/ordernew/order_proce.png" alt="" class="order-proce">
            <div class="car-info">
                <div class="ifl">
                    <img src="https://fimg.zuchecdn.com/upload/web/modepic/101.jpg" alt="" width="180" height="105">
                    <div class="lin">
                        <p class="lp1">${carType.type_name}</p>
                        <p class="lp2">三厢/自动 </p>
                        <div class="base-btn">
                            <a  class="look-config" >查看配置信息</a>
                            <%--<script>$(document).ready(function(e) {$(".look-config").click(function(e) {$(".configbox").toggle();});});</script>--%>
                            <a href="${ctx}/" class="look-change">修改订单</a>
                        </div>
                    </div>
                </div>
                <ul class="ifr">
                    <li class="bdr">
                        <p class="le line1">
                            <i class="ifr-qc"></i>
                            <span>取车</span>
                        </p>
                        <%--<p class="le line2">--%>
                        <%--<i class="ifr-time"></i>--%>
                        <%--<span>2018-07-05 10:00</span>--%>
                        <%--</p>--%>
                        <p class="le line3">
                            <i class="ifr-local"></i>
                            <span>合肥&nbsp;${store.store_name}</span>
                        </p>
                    </li>
                    <li>
                        <p class="le line1">
                            <i class="ifr-hc"></i>
                            <span>还车</span>
                        </p>
                        <%--<p class="le line2">--%>
                        <%--<i class="ifr-time"></i>--%>
                        <%--<span>2018-07-07 10:00</span>--%>
                        <%--</p>--%>
                        <p class="le line3">
                            <i class="ifr-local"></i>
                            <span>合肥&nbsp;${store.store_name}</span>
                        </p>
                    </li>
                </ul>
            </div>


        </div>
    </div>

    <div class="newpg-conf">
        <div class="newpg-con">
            <input type="hidden" id="xmobile" name="xmobile" value='187***6058'/>


            <style>.order-registerinfo li {
                height: 34px;
            }</style>

            <style>
                .zcmficon {
                    display: inline-block;
                    margin-left: 4px;
                    width: 48px;
                    height: 15px;
                    padding-top: 16px;
                    text-align: center;
                    text-decoration: line-through;
                    background-image: url(https://image.zuchecdn.com/newversion/common/yellowfree.png);
                    background-repeat: no-repeat;
                    clear: both;
                }
            </style>
            <div>
                <h3>费用明细</h3>

                <ul class="h3h feeul">
                    <li>
                        <span class="fee-txt">车辆租赁及门店服务费</span>
                        <span class="fee-res">¥${price}</span>
                        <span class="fee-pro">${price}*1</span>
                        <div class="clear"></div>
                    </li>
                    <li style="position:relative;z-index:10;">
					<span class="fee-txt">基础服务费<i class="blue-ques">
						<div class="bx-bubble">
							<i class="litar-l"></i>
							<dl>
								<dd>基础服务费包括车辆意外事故损失，呼叫中心服务，车辆救援、维修及保养服务，人工服务等服务内容的费用。</dd>
								<dd>车辆意外事故损失范围包括：车辆损失（1500以内的损失由客户方承担）；第三者责任 20万元；全车盗抢，玻璃单独破碎及自燃损失。</dd>
								<dd>车辆意外事故损失范围由神州向保险公司投保及神州共同负责承担。 </dd>
								<dd>本项目为必购项目，按天计算，超时4小时以上按1天计算，超时4小时以内不另计算。</dd>
							</dl>
						</div>
					</i></span>
                        <span class="fee-res">¥40</span>
                        <span class="fee-pro">40x1</span>
                        <div class="clear"></div>
                    </li>
                    <li class="opcl">
                        <span class="fee-txt">其他费用<i class="blue-downarr open"></i></span>
                        <span class="fee-res"><i id="otherPriceTotal" total="35">¥35</i></span>
                        <span class="fee-pro">合计</span>
                        <div class="clear"></div>
                    </li>
                    <li class="bluelist show">
                        <ul class="otherul">
                            <li class="discount defaultFeeItem2000">
                                <span class="fee-txt">手续费</span>
                                <span class="fee-res">¥35</span>
                                <div class="clear"></div>
                            </li>
                            <li class="discount defaultFeeItem2000">
                                <span class="fee-txt">车辆押金（可退）</span>
                                <span class="fee-res">¥3000</span>
                                <div class="clear"></div>
                            </li>
                            <li class="discount defaultFeeItem2000">
                                <span class="fee-txt">违章押金（可退）</span>
                                <span class="fee-res">¥2000</span>
                                <div class="clear"></div>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="h3h feeul">
                    <li class="js_total_amount">
                        <span class="fee-txt">基本费用合计</span>
                        <span class="fee-res"><i class="orderTotalPrice"
                                                 style="font-size:24px;">${price+5075}</i></span>
                        <div class="clear"></div>
                    </li>
                </ul>

            </div>
            <input type="hidden" name="orderPrice" id="orderPrice" value="275"/>


            <div class="gopay orderFeeTotal">
                <div class="paydetail">
                    <span class="ddzj">订单总价</span>
                    <span class="ddall"><i>&yen;</i><i class="orderTotalPrice all">${price+5075}</i></span>
                </div>
                <%--<a onclick="addOrder()" id="monitor_fourth_next" class="gopay-blue">提交订单</a>--%>
                <button class="gopay-blue" onclick="addOrder()">提交订单</button>
            </div>

        </div>
    </div>


    <script type="text/javascript">
        var carwrmURL = 'https://static.zuchecdn.com';
        var carwrmjsURL = 'https://js.zuchecdn.com';
        var carwrmimageURL = 'https://image.zuchecdn.com';
        var carwrmcssURL = 'https://css.zuchecdn.com';
        var carwepmURL = 'https://carbusiness.zuche.com';
        var carwlmURL = 'https://passport.zuche.com';
        var carwmmURL = "https://mycar.zuche.com";
        var easyrideURL = 'https://easyride.zuche.com';
        var carbusinessURL = '';
        var driverURL = '';
        var protocol = 'https://';
        var protocoldm = 'https://';
    </script>
    <script type="text/javascript" src="https://js.zuchecdn.com/divided/som/public/lib/sea/sea@89b3a8eaa1.js"></script>
    <script type="text/javascript" src="https://js.zuchecdn.com/divided/som/seaconfig@c8a261554c.js"></script>
    <script type="text/javascript">
        seajs.use(['divided/som/entry/jQ@a576d97fa6', 'divided/som/entry/lib@657a07f9f0'], function () {
            seajs.use('divided/som/entry/serviceEntry@9e6aa3d585');
        });

    </script>
    <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/jquery.ellipsis.min.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/layer/layer.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/car.js"></script>

    <script type="text/javascript" src="${ctx }/resources/fileinput/fileinput.js"></script>
    <script type="text/javascript" src="${ctx }/resources/fileinput/zh.js"></script>
    <script type="text/javascript" src="${ctx }/resources/fileinput/themes/explorer-fa/theme.js"></script>
    <script type="text/javascript" src="${ctx }/resources/fileinput/themes/fa/theme.js"></script>

    <script type="text/javascript" src="${ctx }/resources/js/jquery.Jcrop.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/exif.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/image.cut.js"></script>
    <input type="hidden" id="type_id" value="${carType.type_id}" >
    <input type="hidden" id="store_from_id" value="${store.store_id}" >
    <input type="hidden" id="store_to_id" value="${store.store_id}" >
    <%--<input type="hidden" id="car_price" value="${price+5075}" >--%>




    <script>
        var ctx = "${ctx}";
        function addOrder() {

            var order = {};
            <%--$("#type_id").val("${carType.type_id}");--%>
            <%--$("#store_from_id").val("${store.store_id}");--%>
            <%--$("#store_to_id").val("${store.store_id}");--%>
            $("#car_price").val("${price+5075}");

            order.type_id = $("#type_id").val();
            order.store_from_id =  $("#store_from_id").val();
            order.store_to_id =  $("#store_to_id").val();
            order.car_price =  $("#car_price").val();
            //alert(order.type_id);
            $.ajax({
                type: 'post',
                url: ctx + '/order/add/handle',
                data: JSON.stringify(order),
                contentType: 'application/json',
                dataType: 'json',
                success: function (result) {

                    if (result.resultCode === 200) {
                        window.location.href = "${ctx}/order/my-order-manage";
                    } else {
                        layer.msg(result.resultMessage)
                    }

                },
                error: function () {
                    layer.msg("出错了")
                    //中间发生异常，具体查看xhr.responseText
                }
            });

        }
    </script>

</div>
</body>
</html>
