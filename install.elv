# a series of install helpers
use github.com/tcarrio/elvish-modules/paths

fn bash [url hash cmd path]{
    paths:add $path

    if (not ?(which $cmd)) {
        if ?(which bash) {
            curl -fsSL $url | e:bash
        } else {
            which bash
        }
    }

}

fn cargo [pkg]{
    use github.com/tcarrio/elvish-modules/rust
    use file

    if (not ?(test -f (rust:get_bin_dir)/$pkg)) {
        e:cargo install $pkg
    }
}
