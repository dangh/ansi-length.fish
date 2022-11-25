function ansi-length -d 'print string length without ansi escape characters'
  begin
    if not isatty stdin
      cat -
    else
      echo -n $argv
    end
  end \
  | string replace -ra '\e\[[^m]*m' '' \
  | string replace -ra '[^[:print:]]' '' \
  | string length
end
