homebrew_install_url = 'https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh'

use @0xc/tcarrio/elvish-modules/install

if (not ?(which homebrew)) {
	install:bash $homebrew_install_url false homebrew '/home/linuxbrew/.linuxbrew/bin'
}
