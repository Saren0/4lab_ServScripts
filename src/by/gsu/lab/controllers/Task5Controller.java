package by.gsu.lab.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.gsu.lab.enums.Task5Theme;

@SuppressWarnings("serial")
public class Task5Controller extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			String rawTheme = request.getParameter("theme");
			stringValidation(rawTheme);

			Task5Theme theme = Task5Theme.parseTheme(rawTheme);
			request.setAttribute("theme", theme);
			jump("/task5-result.jsp", request, response);
		} catch (IllegalArgumentException ex) {
			jumpError("/index.jsp", ex.getMessage(), request, response);
		}
	}
}