#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="redrose"
iso_label="REDROSE_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="RedROSE <https://archlinux.org>"
iso_application="RedROSE Live OS"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/etc/sudoers.d/10-redrose"]="0:0:0440"
  ["/etc/skel/.zshrc"]="1000:1000:0755"
  ["/etc/systemd/system/redrose-session.service"]="0:0:0644"
  ["/home/redrose"]="1000:1000:0750"
  ["/usr/local/bin/gz"]="0:0:755"
)
passwd_options=("-P" "root")
