package app;

import lib.GreetCommandLine;

public class Sample4 {
	public static void main(String[] args) {
		System.out.println("Hello Sample-4");
		System.out.println("Sample4:" + Sample4.class.getClassLoader());
		System.out.println("GreetCommandLine:" + GreetCommandLine.class.getClassLoader());
		GreetCommandLine g = new GreetCommandLine();
		g.helloWorld();
	}
}