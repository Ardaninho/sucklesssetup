# Ardaninho's suckless setup
# fast compiler
# See LICENSE file for copyright and license details.

all: makeall

clean:
	cd dwm
	make clean
	cd ../st
	make clean
	cd ../dmenu
	make clean
	cd ..

makeall:
	cd dwm
	make
	cd ../st
	make
	cd ../dmenu
	make
	cd ..

install: all
	cd dwm
	make install
	cd ../st
	make install
	cd ../dmenu
	make install
	cd ..

uninstall:
	cd dwm
	make uninstall
	cd ../st
	make uninstall
	 cd ../dmenu
	make uninstall
	cd ..
