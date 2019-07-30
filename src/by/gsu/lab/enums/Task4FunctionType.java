package by.gsu.lab.enums;

public enum Task4FunctionType {
	SIN, COS, TAN;
	public static Task4FunctionType parseFunctionType(String rawFunctionType) {
		return Task4FunctionType.valueOf(rawFunctionType.trim().toUpperCase());
	}
}
