#!/bin/sh
printf '\033c\033]0;%s\a' awsdsa
base_path="$(dirname "$(realpath "$0")")"
"$base_path/BeanJar.x86_64" "$@"
