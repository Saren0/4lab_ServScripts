package by.gsu.lab.controllers;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Task1Controller extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		Locale locale = new Locale("bel", "BY");
		request.setAttribute("task1Locale", locale);

		jump("/task1.jsp", request, response);
	}
}