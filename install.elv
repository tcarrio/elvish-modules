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
