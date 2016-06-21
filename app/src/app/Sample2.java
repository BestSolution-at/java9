package app;

public class Sample2 {
	public static void main(String[] args) {
		System.out.println("Hello Sample-2 World!");
		System.out.println("String.class: " + String.class.getModule());
		System.out.println("HelloModuleWorld.class: " + Sample2.class.getModule());
	}
}
