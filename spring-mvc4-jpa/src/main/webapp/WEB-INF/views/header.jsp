<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" --%>
<%-- 	prefix="springForm"%> --%>
<%-- <c:set var="appPath" value="${pageContext.request.contextPath}"/> --%>
<%
	String contextPath = request.getContextPath();
%>
<html>
<head>
<link href='<%=contextPath + "/resources/css/bootstrap.min.css"%>' rel="stylesheet">
<link href='<%=contextPath + "/resources/css/font-awesome.min.css"%>' rel="stylesheet">
<link href='<%=contextPath + "/resources/css/emp.css"%>' rel="stylesheet">
<script src="<%=request.getContextPath() + "/resources/js/jquery-3.2.1.min.js"%>"></script>
<script src="<%=request.getContextPath() + "/resources/js/bootstrap.min.js"%>"></script>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-left">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">iii</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="<%=contextPath%>/">Home</a></li>
					<li><a href="<%=contextPath%>/rest/json2">REST1</a></li>
					<li><a href="<%=contextPath%>/rest/json3">REST2</a></li>
					<li><a href="<%=contextPath%>/soap">SOAP</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</div>