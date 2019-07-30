<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 4</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Вычисление тригонометрических функций в градусах и радианах<br>
		с указанной точностью.<br>Выбор функций должен осуществляться 
		через выпадающий список.</h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
	<a href="<c:url value="task4-preview.html"/>" 
		title="На предыдущую">На предыдущую</a><br>
	<div>
		<div class="descpiption">Исходное число:</div>
		<div class="value"><c:out value="${number}"/></div><br>
		
		<div class="descpiption">Функция:</div>
		<div class="value"><c:out value="${function}"/></div><br>
	
		<div class="descpiption">Результат в градусах:</div>
		<div class="value"><c:out value="${resultInDegrees}"/></div><br>
		
		<div class="descpiption">Результат в радианах:</div>
		<div class="value"><c:out value="${resultInRadians}"/></div>
	</div>
</body>
</html>