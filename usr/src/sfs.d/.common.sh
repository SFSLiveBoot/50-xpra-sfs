#!/bin/sh

: "${lbu:=/opt/LiveBootUtils}"

: "${pkgs:=$(grep -v -e '^#' -e '^$' "$(dirname "$0")/.pkgs" | tr \\n " ")}"

: "${sources:=/etc/apt/sources.list.d/xpra.sources}"
: "${sources_src:=https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bookworm/xpra.sources}"

: "${key_asc:=/usr/share/keyrings/xpra.asc}"
: "${key_src:=https://xpra.org/xpra.asc}"
