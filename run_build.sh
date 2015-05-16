#!/bin/sh

BUILD_TARGET=$1

case "$1" in
  lite)
    xcodebuild -project MultipleTargets.xcodeproj -target "MultipleTargets Lite"
  ;;
  pro)
    xcodebuild -project MultipleTargets.xcodeproj -target "MultipleTargets Pro"
  ;;
oem)
    xcodebuild -project MultipleTargets.xcodeproj -target "MultipleTargets OEM"
  ;;
  *)
    echo "Usage: `basename $0` { lite | pro | oem }"
  ;;
esac
