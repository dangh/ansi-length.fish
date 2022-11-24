# ansi-length.fish
string length without ansi escape characters

### Installation
```sh
fisher install dangh/ansi-length.fish
```

### Usage
```sh
set text (set_color yellow)hello

echo $text | string length
# 10

echo $text | ansi-length
# 5

ansi-length $text
# 5
```
