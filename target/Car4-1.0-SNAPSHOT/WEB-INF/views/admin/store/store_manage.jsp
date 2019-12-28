<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/25
  Time: 下午3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="zh">
<head>
    <title>汽车租赁</title>
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
            <h2>门店管理</h2>
            <%--&lt;%&ndash;查询块&ndash;%&gt;--%>
            <%--<div style="border:1px solid lightgrey; height: 50px;">--%>
            <%--输入条件查询--%>
            <%--</div>--%>
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col" style="min-width: 150px">网点名称</th>
                    <th scope="col">网点地址</th>
                    <th scope="col">联系电话</th>
                    <th scope="col">营业时间</th>
                    <th scope="col" style="min-width: 210px">操作</th>


                </tr>
                </thead>
                <tbody>
                <c:forEach var="store" items="${store}">
                    <tr>
                        <td scope="row">${store.store_name}</td>
                        <td scope="row">${store.store_address}</td>
                        <td scope="row">${store.store_phone}</td>
                        <c:if test="${store.open_time==1}">
                            <td scope="row">全天24小时</td>
                        </c:if>
                        <c:if test="${store.open_time==2}">
                            <td scope="row">早8点至晚10点</td>
                        </c:if>
                        <td>
                                <%--<input type="button" class="btn btn-primary" value="发布" onclick="releaseBanner(${district.biz_area_id})">--%>
                                <input type="button" class="btn btn-info" value="修改" onclick="location.href='${ctx}/admin/store/${store.store_id}/modify'" />
                                <%--<input type="button" class="btn btn-info" value="隐藏" onclick="hideBanner(${res.res_id})">--%>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>


        </div>
    </div>

</div>


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