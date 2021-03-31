# a series of install helpers

fn bash [url hash cmd path]{
    if (not ?(which $cmd)) {
        if ?(which bash) {
            e:bash -c (curl -fsSL $url)
        } else {
            which bash
        }
    }

    paths = [$path $@paths]
}
