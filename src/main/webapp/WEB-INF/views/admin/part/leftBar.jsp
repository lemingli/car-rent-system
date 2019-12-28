<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/25
  Time: 下午3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>

<%--左侧导航栏--%>
<%--管理员信息块--%>
<div class="card col-md-12">
    <%--<img class="card-img-top" src="..." alt="管理员头像" id="administrator_pic">--%>
    <div class="card-body">
        <h6 class="card-title" id="administrator">管理员
            <%--<sec:authentication property="principal.username" />--%>
        </h6>
        <%--<h6 class="card-title" id="administrator_id">管理员ID:</h6>--%>
    </div>
</div>
<%--分布管理--%>
<div class="card">
    <div class="card-header navi-name" id="headingOne" data-toggle="collapse" data-target="#admin_car"
         aria-expanded="true"
         aria-controls="collapseOne">
        <i class="fa fa-caret-down" aria-hidden="true"></i>汽车管理
    </div>
    <div id="admin_car" class="collapse show" aria-labelledby="admin_car" data-parent="#accordion">
        <div class="card-body">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <%--<a class="nav-link " href="${ctx}/admin/car-add">导入车型</a>--%>
                <a class="nav-link " href="${ctx}/admin/car-type-manage">车型信息管理</a>
                <a class="nav-link " href="${ctx}/admin/car-add">导入车辆</a>
                <a class="nav-link " href="${ctx}/admin/car-manage">车辆信息管理</a>
            </div>
        </div>

    </div>
</div>

<div class="card">
    <div class="card-header navi-name" id="headingTwo" data-toggle="collapse" data-target="#admin_store"
         aria-expanded="true"
         aria-controls="collapseOne">
        <i class="fa fa-caret-down" aria-hidden="true"></i>运营维护管理
    </div>
    <div id="admin_store" class="collapse show" aria-labelledby="admin_store" data-parent="#accordion">
        <div class="card-body">
            <div class="nav flex-column nav-pills" id="v-pills-tab2" role="tablist" aria-orientation="vertical">
                <a class="nav-link " href="${ctx}/admin/store-add">新建网点</a>
                <a class="nav-link " href="${ctx}/admin/store-manage">网点信息管理</a>
                <a class="nav-link " href="${ctx}/admin/employee-add">新建员工</a>
                <a class="nav-link " href="${ctx}/employee-info">员工信息管理</a>
            </div>
        </div>

    </div>
</div>

<div class="card">
    <div class="card-header navi-name" id="headingThree" data-toggle="collapse" data-target="#admin_order"
         aria-expanded="true"
         aria-controls="collapseTwo">
        <i class="fa fa-caret-down" aria-hidden="true"></i>租车业务管理
    </div>
    <div id="admin_order" class="collapse show" aria-labelledby="admin_order" data-parent="#accordion">
        <div class="card-body">
            <div class="nav flex-column nav-pills" id="v-pills-tab3" role="tablist" aria-orientation="vertical">
                <a class="nav-link " href="${ctx}/admin/order-add">新建订单</a>
                <a class="nav-link " href="${ctx}/admin/order-manage">订单信息管理</a>
            </div>
        </div>

    </div>
</div>

<div class="card">
    <div class="card-header navi-name" id="headingFour" data-toggle="collapse" data-target="#admin_customer"
         aria-expanded="true"
         aria-controls="collapseThree">
        <i class="fa fa-caret-down" aria-hidden="true"></i>客户会员管理
    </div>
    <div id="admin_customer" class="collapse show" aria-labelledby="admin_customer" data-parent="#accordion">
        <div class="card-body">
            <div class="nav flex-column nav-pills" id="v-pills-tab4" role="tablist" aria-orientation="vertical">
                <a class="nav-link " href="${ctx}/admin/customer-add">新建客户</a>
                <a class="nav-link " href="${ctx}/admin/customer-manage">客户信息管理</a>
                <a class="nav-link " href="${ctx}/admin/member-manage">会员信息管理</a>

            </div>
        </div>

    </div>
</div>

<div class="card">
    <div class="card-header navi-name" id="headingFive" data-toggle="collapse" data-target="#admin_info"
         aria-expanded="true"
         aria-controls="collapseFour">
        <i class="fa fa-caret-down" aria-hidden="true"></i>信息沟通管理
    </div>
    <div id="admin_info" class="collapse show" aria-labelledby="admin_order" data-parent="#accordion">
        <div class="card-body">
            <div class="nav flex-column nav-pills" id="v-pills-tab5" role="tablist" aria-orientation="vertical">
                <a class="nav-link " href="${ctx}/admin/announcement-add">公告发布</a>
                <a class="nav-link " href="${ctx}/admin/announcement-manage">公告信息管理</a>
            </div>
        </div>

    </div>
</div>




