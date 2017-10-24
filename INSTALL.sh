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

echo -n "Do you want to install also AmbianceDF icons? Type 'yes' and press [ENTER] to install icons or type something different to skip this passage: "
read choice

if [ choice = "yes" ]; then
	                
echo "Installing icons ..."

mkdir -p ~/.icons

cp --no-preserve=mode,ownership -r \
  "AmbianceDF Icons" ~/.icons/

echo "=> Icons installed ..."

gtk-update-icon-cache -q ~/.icons/AmbianceDF\ Icons/ || true
gsettings set org.gnome.desktop.interface icon-theme "AmbianceDF Icons"
echo "=> Icons cached ..."

fi

mkdir -p ~/.themes

cp --no-preserve=mode,ownership -r \
  "AmbianceDF Theme" ~/.themes/

echo "=> Theme installed ..."

gsettings set org.gnome.desktop.interface gtk-theme "AmbianceDF Theme"
gsettings set org.gnome.desktop.wm.preferences theme "AmbianceDF Theme"

echo "=> Theme turned on ..."

echo "Installing shell ..."
echo "User-theme extension must be enabled and fix applicated!"

gsettings set org.gnome.shell.extensions.user-theme name "AmbianceDF Theme"

echo "=> Shell turned on ..."
echo "=> Done!"
