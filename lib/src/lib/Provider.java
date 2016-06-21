package lib;

import lib.internal.InternalType;

public class Provider {
	public static Class<?> get() {
		return InternalType.class;
	}
	
	public static Object create() {
		return new InternalType();
	}
}