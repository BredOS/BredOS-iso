# BredOS ISO

This repo contains the necessary files for generating BredOS universal ISOs.<br /><br />

## Dependencies

The following packages are required for building ISOs:
`arch-install-scripts dosfstools e2fsprogs erofs-utils libarchive libisoburn mtools squashfs-tools grub`<br />

## Usage

To build a x86_64 ISO run: `sudo ./mkarchiso -v -w ./work -o ./out ./x86-iso`<br />
Where `./work` is a temporary directory, `./out` is the image destination.<br />
<br />
Similarly, to build an ARM64 ISO with the rkr3 kernel run:<br />
`sudo ./mkarchiso -v -w ./work -o ./out ./rkr3-iso`<br />
<br />
For the mainline kernel instead run:<br />
`sudo ./mkarchiso -v -w ./work -o ./out ./mainline-iso`<br />
</br>
› To build from x86_64 for ARM64 or from ARM64 to X86, you additionally need to install:
<br />
`qemu-user-static-binfmt qemu-user-static`<br />
and run:<br />
`systemctl restart systemd-binfmt`<br />
<br />
Also make sure your system has the BredOS gpg keys and mirrorlist.<br />
<br />
`sudo pacman-key --recv-keys 77193F152BDBE6A6 BF0740F967BA439D DAEAD1E6D799C638`<br />
`sudo pacman-key --lsign-key 77193F152BDBE6A6 BF0740F967BA439D DAEAD1E6D799C638`<br />
`echo -e '# --> BredOS Mirrorlist <-- #\n\n# BredOS Main mirror\nServer = https://repo.bredos.org/repo/$repo/$arch\n' |sudo tee /etc/pacman.d/bredos-mirrorlist`<br />
