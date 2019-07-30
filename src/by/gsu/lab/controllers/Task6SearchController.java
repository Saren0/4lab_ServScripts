package by.gsu.lab.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.gsu.lab.beans.Task6Node;
import by.gsu.lab.helpers.Task6DataStorage;

@SuppressWarnings("serial")
public class Task6SearchController extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			List<Task6Node> nodes = Task6DataStorage.getNodes();
			List<Task6Node> listOfFound = new ArrayList<>();
			String searchValue;
			String searchPhoneParam = request.getParameter("searchPhone");
			String searchSurnameParam = request.getParameter("searchSurname");
			if (searchPhoneParam != null) {
				String phone = request.getParameter("phone");
				stringValidation(phone);
				phone = phone.trim();
				searchValue = phone;
				for (Task6Node current : nodes) {
					if (current.getPhone().contains(phone)) {
						listOfFound.add(current);
					}
				}
			} else if (searchSurnameParam != null) {
				String surname = request.getParameter("surname");
				stringValidation(surname);
				surname = surname.trim();
				searchValue = surname;
				for (Task6Node current : nodes) {
					if (current.getSurname().contains(surname)) {
						listOfFound.add(current);
					}
				}
			} else {
				throw new IllegalArgumentException("Неизвестный тип поиска.");
			}
			request.setAttribute("dateExecution", new Date());
			request.setAttribute("searchValue", searchValue);
			request.setAttribute("listOfFound", listOfFound);
			jump("/task6-search-result.jsp", request, response);
		} catch (IllegalArgumentException ex) {
			jumpError("/task6-index.jsp", ex.getMessage(), request, response);
		}
	}
}