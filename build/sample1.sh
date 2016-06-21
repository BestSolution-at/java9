#!/bin/sh
. ./setup.sh

javac -d app "../app/src/app/Sample1.java"
java -version

echo "=====================";
java -cp app app.Sample1
echo "=====================";
