E:VOLTA_HOME = $E:HOME"/.volta"

use 0xc/elvish-modules/install

if (not ?(which volta)) {
	install:bash 'https://get.volta.sh' false volta $E:VOLTA_HOME'/bin'
}

# TODO: implement completions for volta
