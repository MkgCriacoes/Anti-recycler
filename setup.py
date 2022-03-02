# setup.py
from distutils.core import setup
import py2exe
import glob

opts = {
 "py2exe": { "excludes": "pango, atk, gobject",
             "dll_excludes": [ "iconv.dll","intl.dll","libatk-1.0-0.dll",
                                "libgdk_pixbuf-2.0-0.dll","libgdk-win32-2.0-0.dll",
                                "libglib-2.0-0.dll","libgmodule-2.0-0.dll",
                                 "libgobject-2.0-0.dll","libgthread-2.0-0.dll",
                                 "libgtk-win32-2.0-0.dll","libpango-1.0-0.dll",
                                 "libpangowin32-1.0-0.dll"],
 }
 }

setup(
 name = "App",
 description = "A simple ToDoList Program",
 version = "1.0",
 windows = [
 {"script": "ant.py",
 "icon_resources": [(1, "anti-virus.ico")]
 }
 ],
 options=opts,
 data_files=[("tmp.bat"),("exe.bat"),("bts.py"), ("ant.glade")],
 )
