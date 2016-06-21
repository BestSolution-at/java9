package lib.internal;

import lib.PublicType;

public class InternalType implements PublicType {
	public InternalType() {
		System.out.println("New internal type: " + this);
	}
	
	@Override
	public void call() {
		System.out.println("Invoked call on " + this);
	}
	
	public void internalCall() {
		System.out.println("Invoked internalCall on " + this);
	}
}