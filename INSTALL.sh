#!/bin/sh

set -e

gh_repo="AmbianceDF"
gh_desc="AmbianceDF Ubuntu theme"

cat <<-EOF



        aaa                   bb       
      aa   aa    mmm   mmm    bb
      aaaaaaa   mm mm mm mm   bbbbbbb
      aa   aa   mm  mmm  mm   bb   bbb
      aa   aa   mm       mm   bbbbbbb
                          
                         


  $gh_desc
  https://github.com/cialu/$gh_repo


EOF


echo "=> Looking inside your system ..."

echo "=> Installing ..."

mkdir -p ~/.icons

cp --no-preserve=mode,ownership -r \
  "AmbianceDF Icons" ~/.icons/

echo "=> Icons installed ..."

gtk-update-icon-cache -q ~/.icons/AmbianceDF\ Icons/ || true

echo "=> Icons cached ..."

mkdir -p ~/.themes

cp --no-preserve=mode,ownership -r \
  "AmbianceDF Theme" ~/.themes/

echo "=> Theme installed ..."

gsettings set org.gnome.desktop.interface gtk-theme "AmbianceDF Theme"
gsettings set org.gnome.desktop.interface icon-theme "AmbianceDF Icons"
gsettings set org.gnome.desktop.wm.preferences theme "AmbianceDF Theme"

echo "=> Theme turned on ..."

echo "=> Done!"
