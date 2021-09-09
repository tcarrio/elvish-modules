# conventional commits utilities using docker

use github.com/tcarrio/elvish-modules/git

image_name = 0xc/convco

fn is_installed {
  put (== (docker images 0xc/convco --format '{{.Repository}}' | from-lines | count) 1)
}

fn bootstrap {
  if (not (is_installed)) {
    cwd = (pwd)
    repo_dir = (mktemp -d)
    git clone https://github.com/convco/convco.git $repo_dir
    cd $repo_dir
	  docker build -t $image_name .
	  rm -rf ./* ./.*
    cd $cwd
    rmdir $repo_dir
  }
}

fn run [@args]{
  bootstrap

  if (not ?(git:st)) {
    echo "You are not in a valid git directory"
  } else {
    docker run -v (git:dir)":/tmp" --workdir /tmp --rm -it $image_name $@args
  }
}

fn commit [@args]{
  run commit $@args
}
fn c [@args]{ commit $@args }

