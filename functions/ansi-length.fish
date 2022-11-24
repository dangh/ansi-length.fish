function ansi-length -d 'print string length without ansi escape characters'
  set -l text $argv
  if not isatty stdin
    read -z text
  end
  echo -n $text | perl -pe 's/\e\[[0-9;]*m(?:\e\[K)?//g' | string length
end
