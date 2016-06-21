package app;

import java.util.ServiceLoader;
import java.util.Iterator;
import lib.GreetService;

public class Sample5 {
	public static void main(String[] args) {
		System.out.println("Hello Sample-5");
		ServiceLoader<GreetService> l = 
			ServiceLoader.load(GreetService.class);
			
		Iterator<GreetService> it = l.iterator();
		while( it.hasNext() ) {
			GreetService s = it.next();
			s.helloWorld();
		}
	}
}