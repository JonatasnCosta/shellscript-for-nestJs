#!/bin/bash

#Automation to create an app in nestJs

echo "What is the name of the project?"
read projectName

nest new $projectName
