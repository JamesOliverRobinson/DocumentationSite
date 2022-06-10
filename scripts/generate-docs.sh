#!/bin/bash

modules=("$@")

targetModule="parent-site"

for module in "${modules[@]}"
do
  cd $module
  mkdocs build
  cd ..
  mkdir $targetModule/doc/docs/$module
  cp -a $module/site/. $targetModule/doc/docs/$module
done
