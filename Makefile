build-srcinfo:
	makepkg --printsrcinfo > .SRCINFO

build: build-srcinfo
	makepkg -si

clean:
	find . ! -name '.' ! -name '..' ! -name 'Makefile' ! -name 'PKGBUILD' ! -name '.gitignore' -exec rm -rf {} +
