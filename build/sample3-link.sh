#!/bin/sh
. ./setup.sh

javac -d modules/app \
	"../app/src/module-info.java" \
	"../app/src/app/Sample2.java"

jlink --modulepath ${JAVA9_HOME}/jmods:modules \
	--addmods app \
	--output images/image-sample3

echo "Size"
echo "===="
du -sh "images/image-sample3"
echo ""

echo "Module-List:"
echo "============"
images/image-sample3/bin/java -listmods
echo ""

echo "=====================";
images/image-sample3/bin/java -m app/app.Sample2
echo "=====================";
