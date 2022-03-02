from zipfile import ZipFile


def compactando(comp):
    arquivo.write(comp)


arquivo = ZipFile("teste.mkg", "w")

compactando("Alerta.vbs")
compactando("teste.vbs")
compactando("exe.bat")
compactando("Autorun.bat")
compactando("Antirecy2.0.bat")
compactando("anti-virus.ico")
arquivo.close()
