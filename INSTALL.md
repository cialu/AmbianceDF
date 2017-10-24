# How to install AmbianceDF theme

Instructions on how to install **AmbianceDF** theme:

 - download or clone the package from [https://github.com/cialu/AmbianceDF/](https://github.com/cialu/AmbianceDF/)

 - open a terminal window

 - go to the pakage folder, e.g. ```$ cd Downloads/AmbianceDF/```

 - run installation script with ```$ ./INSTALL.sh```

And enjoy it!

***REMEMBER that to enable AmbianceDF Shell Theme, user-theme extension must be enabled and fix applicated!***

### FIX for user-theme 

In terminal, type:

    sudo cp $HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas/org.gnome.shell.extensions.user-theme.gschema.xml /usr/share/glib-2.0/schemas && sudo glib-compile-schemas /usr/share/glib-2.0/schemas


