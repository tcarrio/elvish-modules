use github.com/tcarrio/elvish-modules/collections

fn add [target &unique=$true]{
    if (eq $unique $true) {
        paths = (collections:dedup [$target $@paths])
    } else {
        paths = [$target $@paths]
    }
}

fn pop {
    paths = $paths[1..]
}