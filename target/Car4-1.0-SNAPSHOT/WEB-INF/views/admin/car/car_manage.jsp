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
    <title>车辆信息管理</title>
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
            <h2>车辆信息管理</h2>
            <%--&lt;%&ndash;查询块&ndash;%&gt;--%>
            <%--<div style="border:1px solid lightgrey; height: 50px;">--%>
            <%--输入条件查询--%>
            <%--</div>--%>
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col" style="min-width: 150px">车牌号</th>
                    <th scope="col">缩略图</th>
                    <th scope="col" style="min-width: 150px">创建时间</th>
                    <th scope="col" style="min-width: 150px">车辆状态</th>
                    <th scope="col" style="min-width: 150px">所属门店</th>
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
                <c:forEach var="car" items="${car}">
                    <tr>
                            <%--<td ><input type="checkbox"></td>--%>
                            <%--<td id="${banner.banner_id}">${banner.banner_id}</td>--%>
                        <td scope="row">${car.car_name}</td>
                            <%--<td><img src="${banner.banner_image_name}"></td>--%>
                        <td><img width="auto" height="100px" src="${ctx}/resources/car/${car.car_image_name}"></td>
                        <td scope="row">${car.car_created_time}</td>

                                <c:if test="${car.car_status==0}">
                                    <td scope="row">未借出</td>
                                </c:if>
                                <c:if test="${car.car_status==1}">
                                    <td scope="row">已预约</td>
                                </c:if>
                                <c:if test="${car.car_status==2}">
                                    <td scope="row">租赁中</td>
                                </c:if>
                                <c:if test="${car.car_status==3}">
                                    <td scope="row">维护修理中</td>
                                </c:if>

                        <!--门店信息  -->
                                <c:if test="${car.store_id == 0}">
                                    <td scope="row">门店A</td>
                                </c:if>
                        <c:if test="${car.store_id == 10000000}">
                            <td scope="row">门店A</td>
                        </c:if>
                        <c:if test="${car.store_id == 10000001}">
                            <td scope="row">门店B</td>
                        </c:if>
                        <c:if test="${car.store_id == 10000002}">
                            <td scope="row">门店C</td>
                        </c:if>
                            <%--<td><img width="auto" height="100px" src="${ctx}/resources/indexBanners/${bannerList.banner_image_name}"></td>--%>
                            <%--<td id="${district.biz_area_id} ">${district.created_time}</td>--%>
                        <td>
                                <%--<input type="button" class="btn btn-primary" value="发布" onclick="releaseBanner(${district.biz_area_id})">--%>
                            <input type="button" class="btn btn-info" value="修改" onclick="location.href='${ctx}/admin/car/${car.car_id}/modify'" />
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
<script type="text/javascript" src="${ctx }/resources/js/location.js"></script>

<script>



</script>


</body>
</html>