fn show [&location='Detroit']{
  curl wttr.in/$location 2>/dev/null | grep -v igor_chubin
}