#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="BredOS"
iso_label="ARCH_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="BredOS <https://bredos.org/>"
iso_application="BredOS Live/Rescue ISO"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-aa64.grub.esp' 'uefi-aa64.grub.eltorito')
arch="aarch64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'arm' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
