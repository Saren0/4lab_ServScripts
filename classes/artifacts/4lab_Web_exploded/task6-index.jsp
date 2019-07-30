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
	
    <c:if test="${not empty errorMessage}">
    	<div class="error">
	        <c:out value="${errorMessage}"/>
    	</div><hr>
    </c:if>
 
	<form name="appendForm" action="Task6AppendController" method="POST" accept-charset="utf-8">
		<div>
			<label for="idAppendName">Фамилия:</label>
			<input type="text" name="surname" id="idAppendName" placeholder="Фамилия" required/>
		</div>
		<div>
			<label for="idAppendPhone">Телефон. Допустимые разделители: <strong>-</strong>
			<strong>(</strong> <strong> ) </strong></label>
			<input type="text" name="phone" id="idAppendPhone" placeholder="(8029) 555-35-35" required/>
		</div>
		<div>
			<label for="idAppendAddress">Адрес:</label>
			<input type="text" name="address" id="idAppendAddress" placeholder="Адрес" required/>
		</div>
		<div>
			<input type="submit" value="Добавить данные" />
		</div>
	</form>

	<form name="searchPhoneForm" action="Task6SearchController" method="GET" accept-charset="utf-8">
		<div>
			<label for="idSearchPhone">Телефон или часть телефона (без разделителей):</label>
			<input type="text" name="phone" id="idSearchPhone" placeholder="5553535" required/>
		</div>
		<div>
			<input type="submit" name="searchPhone" value="Искать телефон"/>
		</div>
	</form>

	<form name="searchSurnameForm" action="Task6SearchController" method="GET" accept-charset="utf-8">
		<div>
			<label for="idSearchSurname">Фамилия или часть фамилии (любым регистром):</label>
			<input type="text" name="surname" id="idSearchSurname" placeholder="Фамилия" required/>
		</div>
		<div>
			<input type="submit" name="searchSurname" value="Искать фамилию"/>
		</div>
	</form>

	<c:choose>
		<c:when test="${nodeList eq null or empty nodeList}">
			Список не содержит записей.
		</c:when>
		<c:otherwise>
			<table>
				<caption>Список записей</caption>
				<thead>
					<tr>
						<th>Номер</th>
						<th>Фамилия</th>
						<th>Адрес</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="currentNode" items="${nodeList}">
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