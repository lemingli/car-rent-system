<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/25
  Time: 下午3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 --%><c:set var="ctx" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="zh">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <title>新建订单</title>
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

    <script type="text/javascript">
        var ctx = "${ctx}"
        var u = navigator.userAgent;
        var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; //android终端
        var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
        if (isAndroid || isiOS) {
            window.location.replace("${ctx}/mobile");
        }
    </script>

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
            <h2>新建订单</h2>
            <div class="form-group row">
                <label for="user_id" class="col-sm-2 col-form-label">用户id：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="user_id" placeholder="用户id">
                </div>
            </div>

            <div class="form-group row">
                <label for="car_id" class="col-sm-2 col-form-label">车辆id：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="car_id" placeholder="汽车id">
                </div>
            </div>

            <div class="form-group row">
                <label for="store_from_id" class="col-sm-2 col-form-label">取车地点：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="store_from_id" placeholder="取车地点">
                </div>
            </div>

            <div class="form-group row">
                <label for="store_to_id" class="col-sm-2 col-form-label">还车地点：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="store_to_id" placeholder="还车地点">
                </div>
            </div>
            
            <div class="form-group row">
                <label for="order_status" class="col-sm-2 col-form-label">订单状态</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="order_status" placeholder="订单状态">
                </div>
            </div>
			
			<div class="form-group row">
                <label for="price" class="col-sm-2 col-form-label">总费用：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="price" placeholder="总费用">
                </div>
            </div>

            
            <div class="form-group row">
                <div class="col-md-11 offset-md-2">
                    <button class="btn btn-primary" value="提交"  onclick="addOrder()" >提交</button>
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
<script type="text/javascript" src="${ctx }/resources/js/order.js"></script>

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
    var uploadUrl = ctx + "/admin/order/image/upload";
    initFileInput("input-id", uploadUrl, '请上传汽车图片');



    function addOrder() {
        
        // <th scope="col" style="min-width: 150px">用户id</th>
        // <th scope="col" style="min-width: 150px">车辆id</th>
        // <th scope="col" style="min-width: 150px">取车地点</th>
        // <th scope="col" style="min-width: 150px">还车地点</th>
        // <th scope="col" style="min-width: 150px">订单状态</th>
        // <th scope="col" style="min-width: 150px">价格</th>
		

        var order = {};
        order.user_id = $("#user_id").val();
        order.car_id = $("#car_id").val();
        order.store_from_id = $("#store_from_id").val();
        order.store_to_id = $("#store_to_id").val();
        order.order_status = $("#order_status").val();
        order.price = $("#price").val();

        

        if (order.user_id  === null ||order.user_id  === '') {
        	layer.msg('请输入用户id')
        }
        else if(order.car_id  === null ||order.car_id  === '' ){
        	layer.msg('请输入车辆id')
        }
        else if(order.store_from_id  === null ||order.store_from_id  === '' ){
        	layer.msg('请输入取车地点id')
        } 
        else if(order.store_to_id  === null ||order.store_to_id  === '' ){
        	layer.msg('请输入还车地点id')
        }  
        else if(order.order_status  === null ||order.order_status  === '' ){
        	layer.msg('请输入订单状态')
        }   
        else if(order.price  === null ||order.price  === '' ){
        	layer.msg('请输入价格')
        }         
        else  {

            $.ajax({
                type: 'post',
                url: ctx + '/admin/order-add-handle',
                data: JSON.stringify(order),
                contentType: 'application/json',
                dataType: 'json',
                success: function (result) {

                    if (result.resultCode === 200) {
                        window.location.href="${ctx}/admin/order-manage";
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
