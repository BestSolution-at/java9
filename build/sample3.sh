#!/bin/sh
. ./setup.sh

javac -d modules/app \
	"../app/src/module-info.java" \
	"../app/src/app/Sample2.java"

echo "=====================";
java -modulepath modules -m app/app.Sample2
echo "=====================";
