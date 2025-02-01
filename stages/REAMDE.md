# STAGES

```md
stage0
stage1
stage2
stage3
stage4
stage5
stage6
stage7
```






```md
# STAGES FILES & DIRECTORYS - TREE

.
├── stages
│   └── REAMDE.md
├── stage7
├── stage6
├── stage5
│   ├── prerun.sh
│   ├── EXPORT_IMAGE
│   ├── 00-install-libreoffice
│   │   └── 00-packages
│   └── 00-install-extras
│       └── 00-packages
├── stage4
│   ├── prerun.sh
│   ├── EXPORT_IMAGE
│   ├── 06-enable-wayland
│   │   └── 00-run.sh
│   ├── 05-print-support
│   │   ├── 01-run.sh
│   │   └── 00-packages
│   ├── 04-enable-xcompmgr
│   │   └── 00-run.sh
│   ├── 03-bookshelf
│   │   ├── files
│   │   └── 00-run.sh
│   ├── 02-extras
│   │   └── 00-run.sh
│   ├── 01-console-autologin
│   │   └── 00-run.sh
│   └── 00-install-packages
│       ├── 02-packages
│       ├── 00-packages-nr
│       ├── 00-packages
│       └── 00-debconf
├── stage3
│   ├── prerun.sh
│   └── 00-install-packages
│       ├── 01-run.sh
│       ├── 00-packages-nr
│       └── 00-packages
├── stage2
│   ├── prerun.sh
│   ├── EXPORT_IMAGE
│   ├── 03-set-timezone
│   │   └── 02-run.sh
│   ├── 03-accept-mathematica-eula
│   │   └── 00-debconf
│   ├── 02-net-tweaks
│   │   ├── 01-run.sh
│   │   └── 00-packages
│   ├── 01-sys-tweaks
│   │   ├── files
│   │   │   ├── resize2fs_once
│   │   │   ├── console-setup
│   │   │   ├── 90-qemu.rules
│   │   │   └── 50raspi
│   │   ├── 01-run.sh
│   │   ├── 00-patches
│   │   │   ├── series
│   │   │   ├── 07-resize-init.diff
│   │   │   ├── 05-path.diff
│   │   │   ├── 04-inputrc.diff
│   │   │   ├── 02-swap.diff
│   │   │   └── 01-useradd.diff
│   │   ├── 00-packages-nr
│   │   ├── 00-packages
│   │   └── 00-debconf
│   └── 00-copies-and-fills
│       ├── 02-run.sh
│       └── 01-packages
├── stage1
│   ├── prerun.sh
│   ├── 03-install-packages
│   │   └── 00-packages
│   ├── 02-net-tweaks
│   │   ├── 00-run.sh
│   │   └── 00-packages
│   ├── 01-sys-tweaks
│   │   ├── files
│   │   │   └── fstab
│   │   ├── 00-run.sh
│   │   ├── 00-patches
│   │   │   ├── series
│   │   │   └── 01-bashrc.diff
│   │   └── 00-packages
│   └── 00-boot-files
│       ├── files
│       │   ├── config.txt
│       │   └── cmdline.txt
│       └── 00-run.sh
├── stage0
│   ├── prerun.sh
│   ├── files
│   │   └── raspberrypi.gpg
│   ├── 02-firmware
│   │   ├── 02-run.sh
│   │   └── 01-packages
│   ├── 01-locale
│   │   ├── 00-packages
│   │   └── 00-debconf
│   └── 00-configure-apt
│       ├── files
│       │   ├── sources.list
│       │   ├── raspi.list
│       │   ├── raspberrypi.gpg.key
│       │   └── 51cache
│       ├── 01-packages
│       └── 00-run.sh
├── scripts
│   ├── remove-comments.sed
│   ├── dependencies_check
│   ├── common
│   └── 00-set-color.sh
├── README.md
├── LICENSE
├── export-noobs
│   ├── prerun.sh
│   └── 00-release
│       ├── files
│       │   ├── release_notes.txt
│       │   ├── partitions.json
│       │   ├── partition_setup.sh
│       │   ├── OS.png
│       │   ├── os.json
│       │   └── marketing
│       │       └── slides_vga
│       │           ├── G.png
│       │           ├── F.png
│       │           ├── E.png
│       │           ├── D.png
│       │           ├── C.png
│       │           ├── B.png
│       │           └── A.png
│       └── 00-run.sh
├── export-image
│   ├── prerun.sh
│   ├── 05-finalise
│   │   └── 01-run.sh
│   ├── 04-set-partuuid
│   │   └── 00-run.sh
│   ├── 03-network
│   │   ├── files
│   │   │   └── resolv.conf
│   
```
