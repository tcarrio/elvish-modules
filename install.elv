# a series of install helpers

fn bash [url hash cmd path]{
    paths = [$path $@paths]

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
