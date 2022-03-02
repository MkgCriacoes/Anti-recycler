#bts.py
import os
import sys

def botoes(self, win, Gtk):
    def scanear(Button):
        def fechar_alerta(Button):
            md.hide()
            
        if select.get_active() != 0:
            global selecionado
            selecionado = select.get_active_text()

            f = open('tmp.bat', 'w')
            print ('@echo off', file = f)
            print (('set un=%s' % selecionado), file = f)
            print ('exe.bat', file = f)
            f.close()
            
            os.system('tmp.bat')
        else:
            md = self.get_object("msd1")
            md.set_size_request(320, 240)
            md.set_title("Erro")

            btmd = self.get_object("bt_msd1_ok")
            btmd.connect("clicked", fechar_alerta)
            
            md.run()

    def cancela(Button):
        win.hide()
    
    select = self.get_object("select")

    bt1 = self.get_object("bt_cancelar")
    bt1.connect("clicked", cancela)

    bt2 = self.get_object("bt_scanear")
    bt2.connect("clicked", scanear)
