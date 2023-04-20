
@echo off
:menu
cls
echo [1] Creation Structure 
echo [2] Backup source vers destination (attribut archive)
echo [3] Envoyer liste fichiers c:\windows\system32 vers un fichier listef.txt	
echo [4] Afficher le fichier courant option 3
echo [5] Copie une source vers destination 
echo [6] Quitter 

set /p option=Choix d'option: 
if "%option%"=="1" goto opt1
if "%option%"=="2" goto opt2
if "%option%"=="3" goto opt3
if "%option%"=="4" goto opt4
if "%option%"=="5" goto opt5
if "%option%"=="6" goto opt6
echo Entrez une option valable!
pause
goto menu


:opt1
echo Option 1
if exist SAV rd sav /s /q 
md c:\SAV
cd c:\SAV
md COL MODELS\DOCUMENT MODELS\LABEL MODELS\LISTING MODELS\WORKPROC
cd MODELS\DOCUMENT
md ACH AFH ARTICLE CCH CFH CLIENT DCH FCH FFH FOURN LCH LFH RCH RFH
cd ..\LABEL
md ACH AFH ARTICLE CCH CFH CLIENT DCH FCH FFH FOURN LCH LFH RCH RFH
cd ..\WORKPROC
md ACH AFH ARTICLE CCH CFH CLIENT DCH FCH FFH FOURN LCH LFH RCH RFH
tree c:\SAV
pause 
goto menu

:opt2
echo Option 2
set /p dossource="Entrez le nom du dossier source :"
set /p dosdesti="Entrez le nom du dossier de destination :"
pause 
xcopy %dossource% %dosdesti%
pause 
goto menu

:opt3
echo Option 3
dir /A-D C:\Windows\System32 > listef
pause 
goto menu

:opt4
echo Option 4
Type listef.txt
pause 
goto menu


:opt5
echo Option 5
echo Le nom du baatch est %0
echo Le dossier de source est 1%
echo Le dossier de destinantion est 2%
xcopy 1% 2%
pause 
goto menu

:opt6
echo Shutting Down
pause 
quit







