package by.gsu.lab.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import by.gsu.lab.beans.Task6Node;
import by.gsu.lab.helpers.Task6DataStorage;

public class Task6FilterIndex implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, 
			FilterChain chain) throws IOException, ServletException {
		List<Task6Node> nodes = Task6DataStorage.getNodes();
		request.setAttribute("nodeList", nodes);
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
}
