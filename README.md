# applesetos
Patch to grub for the apple_to_os


This patch can be applied to https://git.savannah.gnu.org/git/grub.git

This patch also works with the grub-git aur repo for arch linux. To install for arch linux do the following

    git clone https://aur.archlinux.org/grub-git.git
    cd grub-git
    makepkg -so # don't install yet we haven't applied the patch
    cd src/grub/
    # download the patch here
    wget https://raw.githubusercontent.com/Kronos3/applesetos/master/applesetos.patch
    # apply the patch
    patch -p1 < applesetos.patch
    # compile git
    cd ../../ && makepkg -sri
