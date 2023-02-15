<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<style>
#content {margin-left:30px; margin-right:30px;}
</style>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
</head>
<body>
	<tiles:insertAttribute name="header" />
	<div align="center">
		<div class="container">
			<h1><tiles:insertAttribute name="heading" /></h1>
			<p><tiles:insertAttribute name="subheading"/></p>
		</div>
	</div>
	<div id="content"><tiles:insertAttribute name="content" /></div>
	<tiles:insertAttribute name="footer" />
</body>
</html>