#!/usr/bin/python
import sys
import bts

try:
    import pygtk
    import gi
    import os
    from gi.repository import Gtk

except Exception as e:
    print(e)
    sys.exit()

def on_right_click(event):
    mostrar(win)

def mostrar(widget):
    win.show_all()

os.system('tskill wscript')

ui = Gtk.Builder()
ui.add_from_file("ant.glade")
ui.get_objects()

tray = Gtk.StatusIcon()
tray.set_from_file("anti-virus.ico")
tray.connect('activate', on_right_click)

win = ui.get_object("window1")
win.set_size_request(480, 320)
win.connect("delete-event", Gtk.main_quit)
win.set_icon_from_file('anti-virus.ico')
win.set_title('Anti-virus')
win.show_all()

bts.botoes(ui, win, Gtk)

Gtk.main()
