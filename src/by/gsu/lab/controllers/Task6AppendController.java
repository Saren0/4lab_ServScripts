package by.gsu.lab.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.gsu.lab.beans.Task6Node;
import by.gsu.lab.helpers.Task6DataStorage;

@SuppressWarnings("serial")
public class Task6AppendController extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			String surname = request.getParameter("surname");
			String rawPhone = request.getParameter("phone");
			String address = request.getParameter("address");
			stringValidation(surname, rawPhone, address);
			String phone = phoneNormalize(rawPhone);
			Task6DataStorage.addNode(new Task6Node(phone, surname, address));
			jump("/task6-index.jsp", request, response);
		} catch (IllegalArgumentException ex) {
			jumpError("/task6-index.jsp", ex.getMessage(), request, response);
		}
	}

	private String phoneNormalize(String rawPhone) {
		String phone;
		phone = rawPhone.replaceAll("[()\\s-]+", "");
		for (char letter : phone.toCharArray()) {
			if (!Character.isDigit(letter)) {
				throw new IllegalArgumentException(
						"В номере телефона не допускает этот символ: " + letter);
			}
		}
		return phone;
	}
}