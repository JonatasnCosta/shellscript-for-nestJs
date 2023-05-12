#!/bin/bash

#Script to install the validation pipe

npm i --save class-validator class-transformer

projectPath=$(pwd) 

cd $projectPath/src

rm main.ts 

mainCleaning="import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(new ValidationPipe());
  await app.listen(3000);
}
bootstrap();"

echo "$mainCleaning" > main.ts