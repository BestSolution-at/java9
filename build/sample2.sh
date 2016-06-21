#!/bin/sh
. ./setup.sh

javac -d app "../app/src/app/Sample2.java"

echo "=====================";
java -cp app app.Sample2
echo "=====================";

