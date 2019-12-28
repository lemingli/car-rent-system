<%--
  Created by IntelliJ IDEA.
  User: llm
  Date: 2018/6/26
  Time: 上午10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var = "ctx" value="${pageContext.request.contextPath }" />

<style>
    #blog-search-proposals p {
        height: 3rem;
        padding-left: 55px;
        margin-bottom: 0;
    }
    #blog-search-proposals a {
        line-height: 3rem;
        color: #424242;
    }
    #blog-search-proposals {
        text-align: left;
        overflow: visible;
        z-index: 10000;
        background-color: white;
    }
    #blog-search-proposals p:hover{
        background-color: rgba(0,0,0,.15);;
    }
</style>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="${ctx}/">汽车租赁</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <%--<li class="nav-item active">
              <a class="nav-link" href="#">地点探索</a>
            </li>

            <li class="nav-item" id="search-item">
                <%--<form class="devsite-search-form" action="" method="GET" id="top-search">
                  <div id="searchbox" class="devsite-searchbox">
                    <input class="form-control" placeholder="搜索领地" id="search-input" type="text" name="search-input" value="" autocomplete="off">
                    <span class="fa fa-search"></span>
                  </div>
                </form>

                <div id="top-search" style="text-align: left; height: 100px; width: 100px; overflow: visible; z-index: 10000;  background-color: white;"></div>--%>

                <div id="searchbox" class="col-auto text-right search-tool" style="color: rgba(0,0,0,.54); position: relative; height: 40px; overflow: visible; z-index: 10000">

                    <input id="blog_search_form" class="form-control" placeholder="搜索" type="text">
                    <span style="position: absolute; left:25px; top:8px; font-size:20px" class="fa fa-search"></span>
                    <div id="blog-search-proposals" style=" display: none;width: 450px; overflow: visible; z-index: 10000;  background-color: white;"></div>

                </div>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <sec:authorize access="!isAuthenticated()">
                <li class="nav-item">
                    <a class="nav-link" href="${ctx}/signin">登录</a>

                </li>
                <li class="navbar-item">
                    <a class="nav-link" href="${ctx}/register" style="padding-right:0">注册</a>
                </li>

            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <li class="nav-item" style="border-bottom: 0">
                    <a style="padding: 0;" class="nav-link" href="${ctx}/user/<sec:authentication property="principal.user_id" />/profile">
                        <img class="avatar-sm rounded-circle" src="${ctx}/resources/avatars/<sec:authentication property="principal.user_avatars" />">
                        <div id="user_name" data-placement="bottom" style="display: none"><sec:authentication property="principal.username" /></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${ctx}/myinfo">个人中心</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${ctx}/logout" style="padding-right:0">注销</a>
                </li>
            </sec:authorize>
        </ul>
    </div>
</nav>
