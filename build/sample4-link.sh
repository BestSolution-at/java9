#!/bin/sh
. ./setup.sh

javac -d modules/lib \
	"../lib/src/module-info.java" \
	"../lib/src/lib/GreetCommandLine.java"

javac -modulepath modules -d modules/app \
	"../app/src/module-info.java" \
	"../app/src/app/Sample4.java"

jlink --modulepath "${JAVA9_HOME}/jmods:modules" \
	--addmods app,lib \
	--output images/image-sample4

echo "Size"
echo "===="
du -sh images/image-sample4
echo ""

echo "Module-List:"
echo "============"
images/image-sample4/bin/java -listmods
echo ""

echo "=====================";
images/image-sample4/bin/java -m app/app.Sample4
echo "=====================";