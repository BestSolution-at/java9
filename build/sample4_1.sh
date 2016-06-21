#!/bin/sh
. ./setup.sh

javac -d modules/lib \
	"../lib/src/module-info.java" \
	"../lib/src/lib/GreetCommandLine.java"

javac -modulepath modules -d modules/app \
	"../app/src/module-info.java" \
	"../app/src/app/Sample4.java"

echo "=====================";
java -modulepath modules -m app/app.Sample4
echo "=====================";