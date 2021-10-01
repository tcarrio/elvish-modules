# conventional commits utilities using cargo

use github.com/tcarrio/elvish-modules/git

fn bootstrap {
  if (?(which cargo)) {
    use github.com/tcarrio/elvish-modules/install
    install:cargo convco
  }
}

fn run [@args]{
  bootstrap

  if (not ?(git:st)) {
    echo "You are not in a valid git directory"
  } else {
    convco $@args
  }
}

fn commit [@args]{
  run commit $@args
}
fn c [@args]{ commit $@args }

