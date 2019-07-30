<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 5</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Выбор изображения по тематике (природа, автомобили, дети и т.д.)
		и его отображение</h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
	<a href="<c:url value="task5-preview.html"/>" 
		title="На предыдущую">На предыдущую</a><br>
	
		<div>Изображение на тему: <c:out value="${theme.displayName}"/></div>
		<div class="<c:out value="${theme}"/>"></div>
</body>
</html>