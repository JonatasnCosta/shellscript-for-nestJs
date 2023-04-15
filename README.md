# shellscript-for-nestJs
Shell script to automate the creation of applications in nestJs.

Speak Devs!

For those who program on Linux, I created an automation in Shell Script to speed up the process of creating the skeleton of the nestJS app.
Navigating to the directory of your choice, just type the nest.sh command in the terminal.
Then the script asks what the name of the project is.
After he creates the app he opens the v.s code automatically.
After that it deletes the app.controller.spec.ts, app.controller.ts, app.service.ts and app.module.ts modules.
Finally he creates a new app.module.ts already with the dependency fixes and runs npm run start:dev .
If you liked it, give it a star and feel free to make changes.