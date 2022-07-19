# 7coil's Arch Linux Repository

Currently only has video drivers for PS4 3D acceleration... which are untested - I don't even know if this repository or instructions work yet!
- Extra changes from rinsuki: https://github.com/rinsuki/ps4linux-video-drivers
- Changes from Ps3itaTeam: https://github.com/Ps3itaTeam/ps4linux-video-drivers
- Original patches from failoverflow: https://github.com/fail0verflow/ps4-radeon-patches
- Patch for ps4pro (GLADIUS) from eeply.

## Installation

Grab your packages... if you trust me!

1) Add the repository to `/etc/pacman.conf`
```ini
[sevencoil]
SigLevel = Optional DatabaseOptional
Server = https://archlinux.leondrolio.com/packages/$repo/os/$arch
```

2) Update Arch Linux
```sh
sudo pacman -Syu
```

3) Install the drivers
```sh
sudo pacman -S mesa-git lib32-libdrm-git lib32-mesa-git libdrm-git
```

(Editors note: Probably don't install `xf86-video-amdgpu-git`, unless you really need it)

4) Reboot Arch Linux

The drivers will be periodically updated and installed automatically when you upgrade Arch Linux


NOTE:
If you for some reason need the old old drivers you can still get them from this repository:
```
https://psxita.it/repo
```

## Building

```
make
repo-add [reponame].db.tar.xz *.pkg.tar.zst
```

Then host the folder wherever you like, such as GitHub Pages
