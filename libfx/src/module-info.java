module libfx {
	requires lib;
	requires javafx.controls;
	requires javafx.graphics;
	requires javafx.base;
	exports libfx;
	provides lib.GreetService with libfx.internal.GreetWithFX;
}