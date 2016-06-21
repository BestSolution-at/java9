package libfx.internal;

import lib.GreetService;
import libfx.MainFX;
import javafx.application.Application;

public class GreetWithFX implements GreetService {
	public void helloWorld() {
		System.out.println("Hello FX");
		Application.launch(MainFX.class);
	}
}