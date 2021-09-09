cargo_bin = $E:HOME'/.cargo/bin'

paths = [$cargo_bin $@paths]

fn get_bin_dir {
    put $cargo_bin
}