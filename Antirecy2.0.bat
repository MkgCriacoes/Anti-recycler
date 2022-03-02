@echo off
tskill wscript
goto inicio
:inicio
@echo off
color 0A
if EXIST E:\ goto CE
if EXIST F:\ goto CF
if EXIST G:\ goto CG
if EXIST H:\ goto CH
if EXIST I:\ goto CI
if EXIST J:\ goto CJ
if EXIST K:\ goto CK
goto inicio
:CE
set un=E
goto verificar
:CF
set un=F
goto verificar
:CG
set un=G
goto verificar
:CH
set un=H
goto verificar
:CI
set un=I
goto verificar
:CJ
set un=J
goto verificar
:CK
set un=K
goto verificar
:verificar
if EXIST "%un%:\RECYCLER" goto executar
if EXIST "%un%:\RECYCLER.exe" goto executar
if EXIST "%un%:\biwekrntoz.vbs" goto executar
if EXIST "%un%:\vircuzre" goto executar
if EXIST "%un%:\vircure" goto executar
if %un%==E goto CF
if %un%==F goto CG
if %un%==G goto CH
if %un%==H goto CI
if %un%==I goto CJ
if %un%==J goto CK
if %un%==K goto CE
goto verificar
:executar
teste.vbs
timeout 120
goto verificar