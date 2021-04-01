fn status [@args]{
  git status $@args
}
fn st [@args]{ status $@args }

fn add [@args]{
  git add $@args
}
fn a [@args]{ add $@args }

fn commit [@args]{
  git commit -v $@args
}
fn c [@args]{ commit $@args }

fn amend [@args]{
  git commit --amend --no-edit --date=(date +"%Y %D") $@args
}
fn a [@args]{ amend $@args }

fn log [@args]{
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all $@args
}
fn l [@args]{ log $@args }

fn wip [@args]{
  git commit -m 'wip' --no-verify $@args
}
fn w [@args]{ wip $@args }

fn push [@args]{
  git push origin HEAD $@args
}
fn p [@args]{ push $@args }

fn pushf [@args]{
  git push origin HEAD --force-with-lease $@args
}
fn pf [@args]{ pushf $@args }

fn pushff [@args]{
  git push origin HEAD --force $@args
}
fn pff [@args]{ pushff $@args }

fn squash [target @args]{
  base_name = (git merge-base HEAD $target)
  git rebase -i $base_name $@args
}
fn sq [target]{ squash $target }