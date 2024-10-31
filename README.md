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
