<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 3</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Создать приложение, выводящее фамилию разработчика,<br>
		дату и время получения задания,<br>
		а также дату и время его выполнения.</h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
	<div>
		<div class="descpiption">Фамилия разработчика:</div>
		<div class="value"><c:out value="${lastName}"/></div><br>

		<div class="descpiption">Дата и время получения задания:</div>
		<div class="value"><fmt:formatDate pattern='yyyy-MM-dd : HH-mm' value="${dateReceived}" /></div><br>

		<div class="descpiption">Дата и время выполнения задания:</div>
		<div class="value"><fmt:formatDate pattern='yyyy-MM-dd : HH-mm' value="${dateExecution}" /></div>
	</div>
</body>
</html>