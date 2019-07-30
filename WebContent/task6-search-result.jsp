<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 6</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Телефонный справочник. Таблица должна быть в текстовом виде и<br>
		содержать Фамилию, Адрес, Номер телефона (разделители, например, “;”).<br>
		Поиск должен производиться по части фамилии или по части номера.<br>
		Результаты должны выводиться вместе с датой выполнения в JSP. </h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
	<a href="<c:url value="task6-index.jsp"/>" title="На предыдущую">На предыдущую</a><br>

	<c:choose>
		<c:when test="${listOfFound eq null or empty listOfFound}">
			Указанного вами значения не найдено.
		</c:when>
		<c:otherwise>
			<table>
				<caption>
					Найденные записи по значению: <c:out value="${searchValue}"/>.<br>
					Дата выполнения поиска: <c:out value="${dateExecution}"/>
				</caption>
				<thead>
					<tr>
						<th>Номер</th>
						<th>Фамилия</th>
						<th>Адрес</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="currentNode" items="${listOfFound}">
					<tr>
						<td>
			    			<c:out value="${currentNode.phone}" />
					    </td>
						<td>
			    			<c:out value="${currentNode.surname}" />
					    </td>
						<td>
			    			<c:out value="${currentNode.address}" />
					    </td>
				     </tr>
				</c:forEach>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
</body>
</html>