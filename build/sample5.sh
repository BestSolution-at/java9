#!/bin/sh
. ./setup.sh

javac -d modules/lib \
	"../lib/src/module-info.java" \
	"../lib/src/lib/GreetService.java"
	
javac -modulepath modules -d modules/libfx \
	"../libfx/src/module-info.java" \
	"../libfx/src/libfx/MainFX.java" \
	"../libfx/src/libfx/internal/GreetWithFX.java"
	
javac -modulepath modules -d modules/app \
	"../app/src/module-info.java" \
	"../app/src/app/Sample5.java"
	
echo "=====================";
java -modulepath modules -m app/app.Sample5
echo "=====================";