use github.com/tcarrio/elvish-modules/collections

fn add_to_path [target]{
    paths = (collections:dedup [$target $@paths])
}