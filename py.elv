use epm
epm:install &silent-if-installed=$true github.com/iwoloschin/elvish-packages
use github.com/iwoloschin/elvish-packages/python

if (not ?(test -d $python:virtualenv-directory)) {
  mkdir -p $python:virtualenv-directory
}

fn virtualenv [name @args]{
  if (and (not (eq $name '')) (not ?(test -d $python:virtualenv-directory/$name))) {
    $PYTHON_BIN -m venv $@args $python:virtualenv-directory/$name
  }
}
fn venv [@args]{ virtualenv $@args }
fn v [@args]{ virtualenv $@args }

fn activate [@args]{
  python:activate $@args
}
fn a [@args]{ activate $@args }

fn deactivate [@args]{
  python:deactivate $@args
}
fn d [@args]{ deactivate $@args }
