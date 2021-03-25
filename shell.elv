use github.com/zzamboni/elvish-modules/alias

fn ... { cd ../.. }
fn .... { cd ../../.. }
fn .... { cd ../../../.. }
alias:new ls ls --color
alias:new l ls -alh --color
alias:new grep grep --color