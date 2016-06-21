package app;

import lib.Provider;
import lib.PublicType;
import java.lang.reflect.Method;

public class Sample6 {
	public static void main(String[] args) {
		System.out.println("Hello World 6");
		Class<?> cl = Provider.get();
		System.out.println("Loaded class: " + cl);
		
		System.out.println("Create instance via reflection");
		try {
			System.out.println(cl.newInstance());
		} catch( Exception e ) {
			e.printStackTrace();
		}
		
		System.out.println("===============");
		System.out.println("Invoke a 'call'");
		
		try {
			Object o = Provider.create();
			System.out.println(o);
			Method m = PublicType.class.getMethod("call");
			m.invoke(o);
		} catch( Exception e ) {
			e.printStackTrace();
		}
		
		System.out.println("=======================");
		System.out.println("Invoke a 'internalCall'");
		try {
			Object o = Provider.create();
			System.out.println(o);
			Method m = o.getClass().getMethod("internalCall");
			m.invoke(o);
		} catch( Exception e ) {
			e.printStackTrace();
		} 
	}
}