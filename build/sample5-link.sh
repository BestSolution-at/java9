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

jlink --modulepath ${JAVA9_HOME}/jmods:modules \
	--addmods app,lib,libfx \
	--output images/image-sample5

echo "Size"
echo "===="
du -sh "images/image-sample5"
echo ""

echo "Module-List:"
echo "============"
images/image-sample5/bin/java -listmods
echo ""

echo "=====================";
images/image-sample5/bin/java -m "app/app.Sample5"
echo "=====================";