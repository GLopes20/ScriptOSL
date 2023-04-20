@echo off

if "%1" == "" (
  :: Get the username and password from the user
  set /p username=Entrez le nom de l'utilisateur : 
  set /p password=Entrez le mot de passe : 

  :: Ask if the user should be added to the Administrators group
  set /p addToAdmin="Voulez vous que cet utilisateur soit administrateur (O/N) : "
) else (
  set username=%1
  set password=%2
  set addToAdmin=%3
)

:: Check if the user should be added to the Administrators group
if /i "%addToAdmin%" == "o" (
  set group="Administrators"
) else (
  set group="Users"
)

:: Create the user account
net user %username% %password% /add

:: Add the user to the specified group
net localgroup %group% %username% /add

echo User account created successfully and added to %group% group!

