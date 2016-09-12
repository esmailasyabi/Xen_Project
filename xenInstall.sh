sudo su
apt-get update
apt-get -y install build-essential
apt-get -y install bcc bin86 gawk bridge-utils iproute libcurl3 libcurl4-openssl-dev bzip2 module-init-tools transfig tgif
apt-get -y install texinfo texlive-latex-base texlive-latex-recommended texlive-fonts-extra texlive-fonts-recommended pciutils-dev mercurial
apt-get -y install make gcc libc6-dev zlib1g-dev python python-dev python-twisted libncurses5-dev patch libvncserver-dev libsdl-dev libjpeg-dev
apt-get -y install iasl libbz2-dev e2fslibs-dev git-core uuid-dev ocaml ocaml-findlib libx11-dev bison flex xz-utils libyajl-dev
apt-get -y install gettext pandoc markdown python-dev
apt-get -y install libperl-dev libgtk2.0-dev libaio-dev gcc-multilib xen-utils-4.6 openssh-server libssl-dev
git clone git://xenbits.xen.org/xen.git
cd xen
git checkout stable-4.7
./configure
make world
make install
update-rc.d xencommons defaults 19 18
update-rc.d xendomains defaults 21 20
update-rc.d xen-watchdog defaults 22 23
/sbin/ldconfig
update-grub
reboot
