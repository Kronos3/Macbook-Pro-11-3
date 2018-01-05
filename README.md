## applesetos
Patch to grub for the apple_to_os


This patch can be applied to https://git.savannah.gnu.org/git/grub.git

I had use `--skipinteg` with makepkg because as of today (Jan 5 2018) the grub-git repo has invalid checksums 

This patch also works with the grub-git aur repo for arch linux. To install for arch linux do the following

    git clone https://aur.archlinux.org/grub-git.git
    cd grub-git
    makepkg -so # don't install yet we haven't applied the patch
    cd src/grub/
    # download the patch here
    wget https://raw.githubusercontent.com/Kronos3/Macbook-Pro-11-3/master/applesetos.patch
    # apply the patch
    patch -p1 < applesetos.patch
    # compile git
    cd ../../ && makepkg -sri

## NVIDIA Backlight

`systemctl enable nvidia-bl`

`/etc/systemd/system/nvidia-bl.service`

    [Unit]
    Description=Enable the NVIDIA backlight

    [Service]
    Type=oneshot
    ExecStart=/bin/sh -c "setpci -v -H1 -s 00:01.00 BRIDGE_CONTROL=0"
    RemainAfterExit=yes

    [Install]
    WantedBy=multi-user.target
    
## Wayland-EGL (Not working)
(Run wayland with NVIDIA)

    git clone https://github.com/NVIDIA/egl-wayland.git
    cd egl-wayland
    wget https://raw.githubusercontent.com/kronos3/Macbook-Pro-11-3/master/wayland-egl.patch
    patch -p1 < wayland-egl.patch
    ./autogen.sh

## Spotify
(Scale the client, requires spotify-gnome-integration)

    wget https://raw.githubusercontent.com/kronos3/Macbook-Pro-11-3/master/spotify.desktop
    sudo cp spotify.desktop /usr/share/applications/spotify.desktop
