## Please run as sudo
## This is for a Canon PIXMA Printer, but you can replace lines with whatever drivers you need

# Install wget2 (pre-req)
apt install -y wget2

# Printer driver
wget2 http://gdlp01.c-wss.com/gds/8/0100009108/01/cnijfilter2-5.50-1-deb.tar.gz
tar -xvzf cnijfilter2-5.50-1-deb.tar.gz
bash cnijfilter2-5.50.1-deb/install.sh

# Scanner driver
wget2 http://gdlp01.c-wss.com/gds/1/0100009111/01/scangearmp2-3.50-1-deb.tar.gz
tar -xvzf scangearmp2-3.50-1-deb.tar.gz
bash scangearmp2-3.50-1-deb/install.sh

# Run scanner software
scangearmp2
