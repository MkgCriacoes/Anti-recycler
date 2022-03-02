:unidade
@echo off
color 0A
set num=0
%un%:
attrib +h +s %un%:\Anti-virus.ico
attrib +h +s %un%:\Autorun.inf
if EXIST "%un%:\*.lnk" goto recycler
if EXIST "%un%:\System Volume Information" goto ocultar
if EXIST "%un%:\RECYCLER" goto deletar
if EXIST "%un%:\RECYCLER.exe" goto deletar
if EXIST "%un%:\biwekrntoz.vbs" goto excluir
if EXIST "%un%:\vircuzre" goto vir
if EXIST "%un%:\vircure" goto vir
goto terminar
:recycler
%un%:
attrib -h -r -s /s /d %un%:\*.*
del %un%:\*.lnk
set /a num=%num%+1
if EXIST "%un%:\System Volume Information" goto ocultar
if EXIST "%un%:\RECYCLER" goto deletar
if EXIST "%un%:\RECYCLER.exe" goto deletar
if EXIST "%un%:\biwekrntoz.vbs" goto excluir
if EXIST "%un%:\vircuzre" goto vir
if EXIST "%un%:\vircure" goto vir
goto mensagem
:ocultar
@echo off
attrib +h +s "%un%:\System Volume Information"
if EXIST "%un%:\RECYCLER" goto deletar
if EXIST "%un%:\RECYCLER.exe" goto deletar
if EXIST "%un%:\biwekrntoz.vbs" goto excluir
if EXIST "%un%:\vircuzre" goto vir
if EXIST "%un%:\vircure" goto vir
goto terminar
:deletar
@echo off
set /a num=%num%+1
rd/q/s "%un%:\RECYCLER"
del "%un%:\RECYCLER.exe"
if EXIST "%un%:\biwekrntoz.vbs" goto excluir
if EXIST "%un%:\vircuzre" goto vir
if EXIST "%un%:\vircure" goto vir
goto mensagem
:excluir
set /a num=%num%+1
del "%un%:\biwekrntoz.vbs"
if EXIST "%un%:\vircuzre" goto vir
if EXIST "%un%:\vircure" goto vir
goto mensagem
:vir
set /a num=%num%+1
rd/q/s "%un%:\vircuzre"
del "%un%:\vircuzre"
rd/q/s "%un%:\vircure"
del "%un%:\vircure"
goto mensagem
:mensagem
echo msgbox "%num% Ameaça(s) detectada(s)!!! E escluida(s)!!!",vbinformation,"Alerta!!!" >%userprofile%\documents\Anti-recycler\alerta.vbs
start %userprofile%\documents\Anti-recycler\alerta.vbs
goto terminar
:terminar
exit