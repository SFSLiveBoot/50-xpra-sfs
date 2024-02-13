#!/bin/sh

set -eu
. "$(dirname "$0")/.common.sh"

curl -#SfL -o "$key_asc" "$key_src"
curl -#SfL -o "$sources" "$sources_src"

apt-get update

"$lbu/scripts/apt-sfs.sh" "$DESTDIR" $pkgs
