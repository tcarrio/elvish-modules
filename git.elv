use github.com/zzamboni/elvish-modules/alias

alias:new gst git status
alias:new ga git add 
alias:new gc git commit -v
alias:new gca git commit -v -a
alias:new glog git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all
alias:new git-wip git commit -m 'wip' --no-verify
alias:new git-amend git commit --amend --no-edit --date="$(date +"%Y %D")"
alias:new git-push git push origin HEAD