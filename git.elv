### Git utility functionality
fn root_dir {
  git rev-parse --show-toplevel
}
fn dir { root_dir }

### Git Status functionality
fn status [@args]{
  git status $@args
}
fn st [@args]{ status $@args }

### Git Add functionality
fn add [@args]{
  git add $@args
}
fn a [@args]{ add $@args }

fn add_all {
  add (root_dir)
}
fn aa { add_all }

### Git Commit functionality
fn commit [@args]{
  git commit -v $@args
}
fn c [@args]{ commit $@args }

fn wip [@args]{
  git commit -m 'wip' --no-verify $@args
}
fn w [@args]{ wip $@args }

### Git Amend functionality
fn amend [@args]{
  git commit --amend --no-edit --date=(date +"%Y %D") $@args
}
fn am [@args]{ amend $@args }

### Git Log functionality
fn log [@args]{
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all $@args
}
fn l [@args]{ log $@args }

### Git Pull functionality
fn fetch [@args]{
  git fetch $@args
}
fn f [@args]{ fetch $@args }

fn fetch_all [@args]{
  git fetch -a $@args
}
fn fa [@args]{ fetch_all $@args }

### Git Push functionality
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

### Git Rebase functionality
fn squash [target @args]{
  base_name = (git merge-base HEAD $target)
  git rebase -i $base_name $@args
}
fn sq [target @args]{ squash $target $@args }

fn rebase [target @args]{
  git rebase $target $@args
}
fn rb [target @args]{ rebase $target $@args }

### Git Diff functionality
fn diff [@args]{
  git diff $@args
}
fn d [@args]{ diff $@args }

fn diff_staged [@args]{
  diff --staged $@args
}
fn ds [@args]{ diff_staged $@args }

### Git Branch functionality
fn branch [@args]{
  git branch $@args
}
fn b [@args]{ branch $@args }

fn branch_name {
  git branch --show-current
}
fn bn { branch_name }


### Git Checkout functionality
fn checkout [@args]{
  git checkout $@args
}
fn co [@args]{ checkout $@args }

fn checkout_new_branch [branch_name @args]{
  checkout -b $branch_name $@args
}
fn cob [branch_name @args]{ checkout_new_branch $branch_name $@args }
