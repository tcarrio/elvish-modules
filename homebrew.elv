var homebrew_install_url = 'https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh'

use github.com/tcarrio/elvish-modules/install

if (not ?(which brew)) {
	install:bash $homebrew_install_url false brew '/home/linuxbrew/.linuxbrew/bin'
}
