package by.gsu.lab.helpers;

import java.util.ArrayList;
import java.util.List;

import by.gsu.lab.beans.Task6Node;

public class Task6DataStorage {

	private final static List<Task6Node> nodeList = new ArrayList<>();
	
	public static synchronized void addNode(Task6Node node) {
		nodeList.add(node);
	}
	
	public static synchronized List<Task6Node> getNodes() {
		return nodeList;
	}
}
