function ansi-length -d 'print string length without ansi escape characters'
  set -l empty 1
  begin
    if not isatty stdin
      cat -
    else
      echo -n $argv
    end
  end \
  | string replace -ra '\e\[[^m]*m' '' \
  | string replace -ra '[^[:print:]]' '' \
  | string length \
  | while read -l len
    echo $len
    set empty 0
  end
  if test $empty -eq 1
    echo 0
  end
  true
end
