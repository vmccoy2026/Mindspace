#!/bin/sh
DIR=$(dirname "$0")
cd "$DIR"
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    exec java -classpath "gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
else
    echo "Error: gradle-wrapper.jar not found."
    exit 1
fi
