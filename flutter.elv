if (not ?(which flutter)) {
    if ?(which snap) {
        sudo snap install flutter --classic
        flutter sdk-path
    } else {
        # TODO: Test this out
        flutter_version = '2.0.3'
        flutter_dl_dir = '/tmp/flutter-download'
        flutter_dl_url = 'https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_'$flutter_version'-stable.tar.xz'
        flutter_dl_target = $flutter_dl_dir'/flutter.tar.xz'
        flutter_install_target = $E:HOME'/.flutter'
        wget -O $flutter_dl_target $flutter_dl_url
        tar xf $flutter_dl_target
        ls $flutter_dl_dir
        mv $flutter_dl_dir/flutter $flutter_install_target
        paths = [$flutter_install_target'/bin' $@paths]
    }
}
