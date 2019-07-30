<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Индексная страница</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Лабораторная №4</h1><hr>
    <c:if test="${not empty errorMessage}">
    	<div class="error">
	        <c:out value="${errorMessage}"/>
    	</div><hr>
    </c:if>
	<a href='<c:url value='<%="/Task1Controller"%>'/>' title="Задача 1">
		Задача 1 - Название страны и языка
	</a><br>
	<a href="<c:url value="task2-preview.html"/>" title="Задача 2">
		Задача 2 - Вывод температуры различным цветом
	</a><br>
	<a href='<c:url value='<%="/Task3Controller"%>'/>' title="Задача 3">
		Задача 3 - Вывод фамилии разработчика и даты/времени
	</a><br>
	<a href="<c:url value="task4-preview.html"/>" title="Задача 4">
		Задача 4 - Вычисление тригонометрических функций
	</a><br>
	<a href="<c:url value="task5-preview.html"/>" title="Задача 5">
		Задача 5 - Выбор и отображение картинки
	</a><br>
	<a href="<c:url value="task6-index.jsp"/>" title="Задача 6">
		Задача 6 - Телефонный справочник
	</a>
</body>
</html>