use github.com/tcarrio/elvish-modules/path

# TODO: Implement auto install

if (eq $E:GOPATH '') {
    E:GOPATH = $E:HOME/go
}

go_bin = $E:GOPATH'/bin'

path:add $go_bin