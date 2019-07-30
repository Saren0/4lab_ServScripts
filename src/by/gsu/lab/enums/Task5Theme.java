package by.gsu.lab.enums;

public enum Task5Theme {
	
	CARS("����������"), 
	KIDS("����"), 
	NATURE("�������"), 
	UNKNOWN("�����������");
	
	private String displayName;
	
	private Task5Theme(String displayName) {
		this.displayName = displayName;
	}
	
	public static Task5Theme parseTheme(String rawTheme) {
		return Task5Theme.valueOf(rawTheme.trim().toUpperCase());
	}
	
	public String getDisplayName() {
		return displayName;
	}
	
    public String toString() {
        return name().toLowerCase();
    }
}
