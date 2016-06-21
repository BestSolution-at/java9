#!/bin/sh
. ./setup.sh

javac -d "lib" "../lib/src/lib/GreetCommandLine.java"
javac -cp "lib" -d "app" "../app/src/app/Sample4.java"

java -cp "app:lib" "app.Sample4"