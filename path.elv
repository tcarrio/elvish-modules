use github.com/tcarrio/elvish-modules/collections

# add to the PATH environment variable
fn add [target]{
    paths = (collections:dedup [$target $@paths])
}