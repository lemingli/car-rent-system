<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/7/3
  Time: 上午9:48
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
    <title>Local Go</title>
    <meta name="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="pragma" content="no-cache"/>
    <meta name="cache-control" content="max-age=3600"/>
    <meta name="expires" content="0"/>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" href="${ctx}/resources/images/favicon.ico" type="image/x-icon">
    <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/css/location.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx }/resources/fileinput/themes/explorer-fa/theme.css" rel="stylesheet">
    <link href="${ctx }/resources/fileinput/fileinput.min.css" rel="stylesheet">
    <link href="${ctx }/resources/css/jquery.Jcrop.min.css" rel="stylesheet">



    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <style>
        .table th, .table td {
            text-align: center;
            vertical-align: middle !important;
        }
    </style>

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
            <h2>修改汽车信息</h2>
            <div class="form-group row">
                <label for="car_name" class="col-sm-2 col-form-label">汽车名称：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="car_name" placeholder="汽车名称" value="${car.car_name}">
                </div>
            </div>

            <div class="form-group row">
                <ul>
                    <li class="list-group-item" id="upload-entity-cover" style="border: 0" data-toggle="tooltip" data-placement="left" title="选择图片剪裁完毕后点击上传按钮">
                        <div id="cover_upload_handle">
                            <div id="jcrop-image-div" style="margin-bottom: 10px;"><img class="img-fluid" id="preview-image-custom" src="" /></div>
                            <form id="cover_form" enctype="multipart/form-data">
                                <input id="input-id" name="file" type="file" class="file" />
                            </form>
                            <div id="picture"></div>
                            <div id="image-cut-params" style="display: none"></div>

                            <div id="preview-pane" style="display: none">
                                <div class="preview-container">
                                    <img src="" class="jcrop-preview" alt="Preview" />
                                </div>
                            </div>
                        </div>
                        <div id="cover_uploaded_show" itemprop=""><img class="img-fluid" id="cover_uploaded" src="" /></div>
                        <button id="cover_reupload_button" onclick="reupload()" class="btn btn-primary" style="display: none; margin-top: 10px">重新上传</button>
                    </li>
                    <li class="list-group-item" id="entity-cover" style="display: none; width: 355px; border: 0">
                        <img style="object-fit: cover; max-width: 320px" src=""/>
                        <button id="use-new-cover-button" class="btn btn-success" onclick="show_upload_li(this)" value=""
                                style="margin-top: 20px">更换新的封面图
                        </button>
                    </li>
                </ul>
            </div>

            <div class="form-group row">
                <div class="col-md-11 offset-md-2">
                    <button class="btn btn-primary" value="修改汽车信息"  onclick="modifyCar()" >修改汽车信息</button>
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
    <script type="text/javascript" src="${ctx }/resources/js/location.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/modify.js"></script>

    <script type="text/javascript" src="${ctx }/resources/fileinput/fileinput.js"></script>
    <script type="text/javascript" src="${ctx }/resources/fileinput/zh.js"></script>
    <script type="text/javascript" src="${ctx }/resources/fileinput/themes/explorer-fa/theme.js"></script>
    <script type="text/javascript" src="${ctx }/resources/fileinput/themes/fa/theme.js"></script>

    <script type="text/javascript" src="${ctx }/resources/js/jquery.Jcrop.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/exif.js"></script>
    <script type="text/javascript" src="${ctx }/resources/js/image.cut.js"></script>

    <script type="text/javascript" src='https://webapi.amap.com/maps?v=1.4.0&key=a53171662b73464a0317fcaaed2df8d9'></script>
    <script type="text/javascript" src="${ctx }/resources/js/map.utils.js"></script>

    <script>
        var ctx = "${ctx}";

        var uploadUrl = ctx + "/admin/res/image/upload";
        initFileInput("input-id", uploadUrl, '请上传汽车图片');

        if("${car.car_image_name}" != ''){
            load_old_image("resources/car", "${car.car_image_name}");
        }

        function modifyCar() {


            var car = {};
            car.car_id = ${car.car_id};
            car.car_name = $("#car_name").val();
            car.type_id = 10000000;
            car.store_id = 10000000;
            car.car_image_name = $("#cover_uploaded_show").attr("itemprop");

            if (car.car_name  === null ||car.car_name  === '') {
                layer.msg('请输入车名')
            }
            else  {

                $.ajax({
                    type: 'post',
                    url: ctx + '/admin/car/modify/handle',
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
