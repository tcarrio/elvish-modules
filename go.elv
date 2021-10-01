use github.com/tcarrio/elvish-modules/paths

# TODO: Implement auto install

if (eq $E:GOPATH '') {
    E:GOPATH = $E:HOME/go
}

go_bin = $E:GOPATH'/bin'

paths:add $go_bin