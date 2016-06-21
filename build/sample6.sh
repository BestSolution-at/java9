#!/bin/sh
. ./setup.sh

javac -d modules/lib \
	"../lib/src/module-info.java" \
	"../lib/src/lib/PublicType.java" \
	"../lib/src/lib/internal/InternalType.java" \
	"../lib/src/lib/Provider.java" \
	"../lib/src/lib/GreetService.java"
	
javac -modulepath modules -d modules/app \
	"../app/src/module-info.java" \
	"../app/src/app/Sample6.java"

java -modulepath modules -m app/app.Sample6