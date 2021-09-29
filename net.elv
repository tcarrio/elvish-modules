fn kill_by_port [port &signal=15]{
  netstat -lntpu 2>/dev/null |
    grep $port |
    rev |
    awk '{print $1}' |
    rev |
    cut -d '/' -f 1 |
    peach [id]{ kill -$signal $id }
}