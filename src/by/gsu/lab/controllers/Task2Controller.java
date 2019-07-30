package by.gsu.lab.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Task2Controller extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		final String colorNegativeTemp = "blue";
		final String colorPositiveTemp = "red";
		try {
			String rawTemperature = request.getParameter("temperature");
			stringValidation(rawTemperature);
			doubleValidation("Поле температуры должно быть целым или вещественным числом.",
					rawTemperature);
			
			double temperature = Double.parseDouble(rawTemperature);
			request.setAttribute("temperature", temperature);
			
			int compareResult = Double.compare(temperature, 0D);
			if (compareResult > 0) {
				request.setAttribute("color", colorPositiveTemp);
				jump("/task2-result.jsp", request, response);
			} else if (compareResult < 0) {
				request.setAttribute("color", colorNegativeTemp);
				jump("/task2-result.jsp", request, response);
			} else {
				jumpError("/task2-result.jsp", "Указанное число - ноль.",
						request, response);
			}
		} catch (IllegalArgumentException ex) {
			jumpError("/index.jsp", ex.getMessage(), request, response);
		}
	}
}