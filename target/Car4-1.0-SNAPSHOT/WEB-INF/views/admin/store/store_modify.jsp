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
            <h2>修改门店信息</h2>

            <div class="form-group row">
                <label for="store_name" class="col-sm-2 col-form-label">门店名称：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="store_name" placeholder="门店名称" value="${store.store_name}">
                </div>
            </div>

            <div class="form-group row">
                <label for="store_address" class="col-sm-2 col-form-label">门店地址：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="store_address" placeholder="门店地址"value="${store.store_address}">
                </div>
            </div>

            <div class="form-group row">
                <label for="store_phone" class="col-sm-2 col-form-label">联系电话：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="store_phone" placeholder="联系电话"value="${store.store_phone}">
                </div>
            </div>

            <div class="form-group row">
                <label for="open_time" class="col-sm-2 col-form-label">营业时间：</label>
                <div class="col-sm-6">
                    <select id="open_time"  class="custom-select">
                        <option selected>请选择营业时间</option>
                        <option value="1">全天24小时</option>
                        <option value="2">早8点至晚10点</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-md-11 offset-md-2">
                    <button class="btn btn-primary" value="修改门店信息"  onclick="modifyStore()" >修改门店信息</button>
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
        $("#open_time").val("${store.open_time}");


        function modifyStore() {


            var store = {};
            store.store_id = ${store.store_id};
            store.store_name = $("#store_name").val();
            store.store_address = $("#store_address").val();
            store.store_phone = $("#store_phone").val();
            store.open_time = $("#open_time").val();
            console.log(JSON.stringify(store))


            if (store.store_name === null || store.store_name === '') {
                layer.msg('请输入门店名称')
            }
            else if (store.store_address === null || store.store_address === '') {
                layer.msg('请输入门店地址')
            }
            else  {

                $.ajax({
                    type: 'post',
                    url: ctx + '/admin/store/modify/handle',
                    data: JSON.stringify(store),
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (result) {

                        if (result.resultCode === 200) {
                            window.location.href="${ctx}/admin/store-manage";
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




</body>
</html>
