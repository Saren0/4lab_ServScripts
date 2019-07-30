<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 1</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Вывести полное название страны и языка</h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
		
	<c:choose>
		<c:when test="${task1Locale eq null}">
			Результат отсутствует.
		</c:when>
		<c:otherwise>
			<div class="descpiption">Страна:</div>
			<div class="value"><c:out value="${task1Locale.displayCountry}"/></div><br>

			<div class="descpiption">Язык:</div>
			<div class="value"><c:out value="${task1Locale.displayLanguage}"/></div>
		</c:otherwise>
	</c:choose>
</body>
</html>