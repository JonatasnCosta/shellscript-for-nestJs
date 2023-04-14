#!/bin/bash

echo "What is the name of the project?"
read projectName

nest new $projectName

projectPath=$(pwd) 

cd $projectPath/$projectName

code . 

cd $projectPath/$projectName/src

rm app.controller.spec.ts  app.controller.ts app.service.ts  app.module.ts

touch app.module.ts

appModuleCleaning="
import { Module } from '@nestjs/common'; 

@Module(
{ imports: [], 
controllers: [], 
providers: [], 
}) 

export class AppModule {}"

echo "$appModuleCleaning" > app.module.ts

npm run start:dev



