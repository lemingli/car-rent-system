<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/25
  Time: 下午3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="zh">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title>汽车租赁</title>
    <meta name="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="pragma" content="no-cache"/>
    <meta name="cache-control" content="max-age=3600"/>
    <meta name="expires" content="0"/>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/css/location.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/fileinput/themes/explorer-fa/theme.css" rel="stylesheet">
    <link href="${ctx }/resources/fileinput/fileinput.min.css" rel="stylesheet">
    <link href="${ctx }/resources/css/jquery.Jcrop.min.css" rel="stylesheet">

    <%--<script type="text/javascript">--%>
        <%--var ctx = "${ctx}"--%>
        <%--var u = navigator.userAgent;--%>
        <%--var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; //android终端--%>
        <%--var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端--%>
        <%--if (isAndroid || isiOS) {--%>
            <%--window.location.replace("${ctx}/mobile");--%>
        <%--}--%>
    <%--</script>--%>

    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <style>
        .table th, .table td {
            text-align: center;
            vertical-align: middle !important;
        }
    </style>

    <%--<script type="text/javascript">--%>
        <%--var area = document.getElementById('moocBox');--%>
        <%--var iliHeight = 24;//单行滚动的高度--%>
        <%--var speed = 50;//滚动的速度--%>
        <%--area.scrollTop=0;--%>
        <%--area.innerHTML+=area.innerHTML;//克隆一份一样的内容--%>
        <%--var timer=null;--%>
        <%--function startMove(){--%>
            <%--area.scrollTop++;--%>
            <%--if(area.scrollTop % iliHeight == 0){--%>
                <%--clearInterval(timer);--%>
                <%--setTimeout("startMove()", 1000);--%>
            <%--}--%>
            <%--else{--%>
                <%--if(area.scrollTop >= area.scrollHeight/2 ){--%>
                    <%--area.scrollTop = 0;--%>
                <%--}--%>
                <%--setTimeout("startMove()",50);--%>
            <%--}--%>
        <%--}--%>
        <%--startMove();--%>
    <%--</script>--%>
</head>
<body>


<div class="container-fluid">
    <!-- 顶部导航栏位置  -->
    <div class="row">
        <jsp:include page="../part/topBar.jsp">
            <jsp:param name="topBar" value="topBar"/>
        </jsp:include>
    </div>

    <div class="row">
        <!-- 左侧栏 -->
        <div class="col-md-2">
            <jsp:include page="../part/leftBar.jsp">
                <jsp:param name="leftBar" value="leftBar"/>
            </jsp:include>
        </div>

        <!-- 内容区域 -->
        <div class="col-md-8">
            <h2>新建汽车</h2>
            <div class="form-group row">
                <label for="car_name" class="col-sm-2 col-form-label">车牌号：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="car_name" placeholder="车牌号">
                </div>
            </div>


            <div class="form-group row">
                <label for="type_id" class="col-sm-2 col-form-label">汽车品牌：</label>
                <div class="col-sm-6">
                    <select id="type_id" data-toggle="tooltip" data-placement="left" title="汽车品牌"
                            class="custom-select">
                        <option selected>请选择汽车品牌</option>
                        <option value="10000000">雪佛兰科鲁兹</option>
                        <option value="10000001">大众朗逸</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="store_id" class="col-sm-2 col-form-label">所属门店：</label>
                <div class="col-sm-6">
                    <select id="store_id" data-toggle="tooltip" data-placement="left" title="汽车品牌"
                            class="custom-select">
                        <option selected>请选择所属门店</option>
                        <option value="10000000">门店A</option>
                        <option value="10000001">门店B</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="car_status" class="col-sm-2 col-form-label">汽车状态：</label>
                <div class="col-sm-6">
                    <select id="car_status" data-toggle="tooltip" data-placement="left" title="汽车品牌"
                            class="custom-select">
                        <option selected>请选择汽车状态</option>
                        <option value="0">未借出</option>
                        <option value="1">已预约</option>
                        <option value="2">租赁中</option>
                        <option value="3">维护修理中</option>

                    </select>
                </div>
            </div>



            <%--<div class="form-group row">--%>
                <%--<label for="jcrop-image-div" class="col-sm-2 col-form-label">上传图片：</label>--%>
                <%--<div class="col-sm-6">--%>
                    <%--<div id="cover_upload_handle">--%>
                        <%--<div id="jcrop-image-div" style="margin-bottom: 10px;"><img class="img-fluid" id="preview-image-custom" src="" /></div>--%>
                        <%--<form id="cover_form" enctype="multipart/form-data">--%>
                            <%--<input id="input-id" name="file" type="file" class="file" />--%>
                        <%--</form>--%>
                        <%--<div id="picture"></div>--%>
                        <%--<div id="image-cut-params" style="display: none"></div>--%>

                        <%--<div id="preview-pane" style="display: none">--%>
                            <%--<div class="preview-container">--%>
                                <%--<img src="" class="jcrop-preview" alt="Preview" />--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div id="cover_uploaded_show" itemprop=""><img class="img-fluid" id="cover_uploaded" src="" /></div>--%>
                    <%--<button id="cover_reupload_button" onclick="reupload()" class="btn btn-primary" style="display: none; margin-top: 10px">重新上传</button>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="form-group row">
                <div class="col-md-11 offset-md-2">
                    <button class="btn btn-primary" value="提交"  onclick="addCar()" >提交</button>
                </div>
            </div>
        </div>

    </div>

</div>

<!-- 底部栏 -->
<%--<jsp:include page="part/footer.jsp">
  <jsp:param name="footer" value="footer_div"/>
</jsp:include>--%>

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

<%--<script type="text/javascript" src='https://webapi.amap.com/maps?v=1.4.0&key=a53171662b73464a0317fcaaed2df8d9'></script>--%>
<%--<script type="text/javascript" src="${ctx }/resources/js/map.utils.js"></script>--%>

<script>
    var ctx = "${ctx}";
    // var uploadUrl = ctx + "/admin/car/image/upload";
    // initFileInput("input-id", uploadUrl, '请上传食堂图片');



    function addCar() {


        var car = {};
        car.car_name = $("#car_name").val();
        car.type_id = $("#type_id").val();
        car.store_id = $("#store_id").val();
        car.car_status = $("#car_status").val();
        // car.car_image_name = $("#cover_uploaded_show").attr("itemprop");

        if (car.car_name  === null ||car.car_name  === '') {
            layer.msg('请输入车牌号')
        }
        else  {

            $.ajax({
                type: 'post',
                url: ctx + '/admin/car-add-handle',
                data: JSON.stringify(car),
                contentType: 'application/json',
                dataType: 'json',
                success: function (result) {

                    if (result.resultCode === 200) {
                        window.location.href="${ctx}/admin/car-manage";
                    }else{
                        layer.msg(result.resultMessage)
                    }

                },
                error: function () {
                    layer.msg("出错了")
                    //中间发生异常，具体查看xhr.responseText
                }
            });

        }
    }
</script>

<script>


</script>


</body>
</html>
