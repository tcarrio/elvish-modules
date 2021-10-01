set PROJECT_NAME = 'github.com/tcarrio'

# clear out all tcarrio/elvish-* modules
fn all {
  _delete_elvish_module ''
}

fn one [name]{
  _delete_elvish_module $name
}

fn _get_share_root {
  put $E:HOME/.local/share/elvish/lib/$PROJECT_NAME
}

fn _get_elvish_root {
  put $E:HOME/.elvish/lib/$PROJECT_NAME
}

fn _delete_elvish_module [&name='']{
  share_dir = (_get_share_root)/$name
  if ?(test -d $share_dir) {
    rm -rf $share_dir
  }

  elvish_dir = (_get_elvish_root)/$name
  if ?(test -d $elvish_dir) {
    rm -rf $elvish_dir
  }
}