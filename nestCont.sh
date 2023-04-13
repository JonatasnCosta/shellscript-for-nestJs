#!/bin/bash

# Automation to create a controller in nestJs without the tests file.

echo "What is the name of the controller?"
read controllerName

nest g resource $controllerName --no-spec