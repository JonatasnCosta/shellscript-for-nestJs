#!/bin/bash
npm install --save @nestjs-modules/mailer nodemailer
npm install --save-dev @types/nodemailer
npm install --save pug


projectPath=$(pwd) 

cd $projectPath/src

mkdir templates

cd $projectPath/src/templates

touch forget.pug

appForgetPug="//- template.pug
p #{name} você solicitou a recuperação de senha, por favor use o token #{token}"

echo "$appForgetPug" > forget.pug

cd ..
cd ..
cd  $projectPath
rm nest-cli.json

touch nest-cli.json
schema="schema"
nestCli="
{
  \""\$schema\"":\""https://json.schemastore.org/nest-cli\"",
  \""collection\"":\""@nestjs/schematics\"",
  \""sourceRoot\"": \""src\"",
  \""compilerOptions\"": {
    \""assets\"":[{
      \""include\"": \""templates/**/*\"",
      \""outDir\"": \""dist\""
    }],
    \""deleteOutDir\"": true
  }
}
"
echo "$nestCli" > nest-cli.json