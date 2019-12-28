<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/25
  Time: 下午3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="zh">
<head>
    <title>订单管理</title>
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
        <div class="col-md-10">
            <h2>订单管理</h2>
            <%--&lt;%&ndash;查询块&ndash;%&gt;--%>
            <%--<div style="border:1px solid lightgrey; height: 50px;">--%>
            <%--输入条件查询--%>
            <%--</div>--%>
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col" style="min-width: 150px">用户id</th>
                    <th scope="col" style="min-width: 150px">车辆id</th>
                    <th scope="col" style="min-width: 150px">车牌</th>
                    <th scope="col" style="min-width: 150px">取车地点</th>
                    <th scope="col" style="min-width: 150px">还车地点</th>
                    <th scope="col" style="min-width: 150px">订单状态</th>
                    <th scope="col" style="min-width: 150px">价格</th>
					
                    <%--<th scope="col">创建时间
                      <div class="btn-group">
                        <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="#">按时间正序</a>
                          <a class="dropdown-item" href="#">按时间倒序</a>
                        </div>
                      </div>
                    </th>--%>
                    <th scope="col" style="min-width: 210px">操作</th>


                </tr>
                </thead>
                <tbody>

                <c:forEach var="order" items="${order}" >
                    <tr>
                            <%--<td ><input type="checkbox"></td>--%>
                            <%--<td id="${banner.banner_id}">${banner.banner_id}</td>--%>
                        <td scope="row">${order.user_id}</td>
                        <td scope="row">${order.car_id}</td>
                                <td scope="row">浙A88888</td>

                                <!--取车地点-->
                        <c:if test="${order.store_from_id == 10000000}">
   							<td scope="row">门店A</td>
						</c:if>
                        <c:if test="${order.store_from_id == 2}">
   							<td scope="row">门店B</td>
						</c:if>
                    	<c:if test="${order.store_from_id == 3}">
   							<td scope="row">门店C</td>
						</c:if>
						
						<!--还车地点 -->
						<c:if test="${order.store_to_id == 10000000}">
   							<td scope="row">门店A</td>
						</c:if>
                        <c:if test="${order.store_to_id == 2}">
   							<td scope="row">门店B</td>
						</c:if>
                    	<c:if test="${order.store_to_id == 3}">
   							<td scope="row">门店C</td>
						</c:if>
                                <c:if test="${order.order_status==0}">
                                    <td scope="row">预定成功</td>
                                </c:if>
                                <c:if test="${order.order_status==1}">
                                    <td scope="row">租赁中</td>
                                </c:if>
                                <c:if test="${order.order_status==2}">
                                    <td scope="row">已完成</td>
                                </c:if>
                                <c:if test="${order.order_status==3}">
                                    <td scope="row">已取消</td>
                                </c:if>
                        <td scope="row">${order.price}</td>
                        
                            <%--<td><img src="${banner.banner_image_name}"></td>--%>
                            <%--<td><img width="auto" height="100px" src="${ctx}/resources/indexBanners/${bannerList.banner_image_name}"></td>--%>
                            <%--<td id="${district.biz_area_id} ">${district.created_time}</td>--%>
                        <td>
                            <input type="hidden" id="order_id" value="${order.order_id}" >
                            <input type="hidden" id="car_id" value="${order.car_id}" >


                        <%--<input type="button" class="btn btn-primary" value="发布" onclick="releaseBanner(${district.biz_area_id})">--%>
                                    <input type="button" class="btn btn-primary" value="借出"  onclick="updateOrder(${order.order_id},${order.car_id})">
                                    <input type="button" class="btn btn-primary" value="接收"  onclick="updateOrder2(${order.order_id},${order.car_id})">
                                    <input type="button" class="btn btn-primary" value="删除"  onclick="updateOrder3(${order.order_id},${order.car_id})">
                                <%--<input type="button" class="btn btn-info" value="隐藏" onclick="hideBanner(${res.res_id})">--%>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <%--<div class="message">共<i class="blue">&nbsp;&nbsp;</i>条记录</div>--%>


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
<%--<script type="text/javascript" src="${ctx }/resources/js/location.js"></script>--%>

<script>
    var ctx = "${ctx}";

    function updateOrder(order_id,car_id) {

        // alert(order_id);
        var order={};
        order.order_id = order_id;
        order.car_id = car_id;
        $.ajax({
            type: 'post',
            url: ctx + '/order/confirm/handle',
            data: JSON.stringify(order),
            dataType: 'json',
            success: function (result) {

                if (result.resultCode == 200) {
                    location.reload()
                }else{
                    layer.msg(result.resultMessage)
                }
            },
            error: function (xhr) {
                layer.msg("出错了")
                //中间发生异常，具体查看xhr.responseText
            }
        });



    }



</script>




</body>
</html>