default_host = 127.0.0.1
default_port = 6379

fn cli [&host=$default_host &port=$default_port @args]{
  redis-cli -h $host -p $port $@args
}

fn scan [&host=$default_host &port=$default_port @args]{
  cli &host=$host &port=$port --scan $@args
}

fn get [&host=$default_host &port=$default_port @args]{
  cli &host=$host &port=$port get $@args
}

fn wipe [&host=$default_host &port=$default_port]{
  scan &host=$host &port=$port | from-lines | each [key]{
    cli del &host=$host &port=$port $key
  }
}
