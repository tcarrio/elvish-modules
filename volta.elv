E:VOLTA_HOME = $E:HOME"/.volta"
paths = [$E:VOLTA_HOME/bin $@paths]

if (not ?(which volta)) {
    if ?(which bash) {
        curl https://get.volta.sh | bash
    } else {
        # TODO: Implement manual volta install
        # For now, throw an exception so you better have bash
        which bash 
    }
}

fn get_bin {
    return $E:HOME"/.volta/bin"
}

