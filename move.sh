#!/bin/bash
ls helm/profilecharts/templates/ 2>/dev/null
if [ $? -eq 0 ]; then
  rm -rf helm/profilecharts/templates/*
  cp *.yaml helm/profilecharts/templates/
else
  mkdir helm/profilecharts/templates/
  cp *.yaml helm/profilecharts/templates/
fi