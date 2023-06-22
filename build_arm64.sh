#! /usr/bin/env bash

#Script folder
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
work_dir=$SCRIPT_DIR/work
out_dir=$SCRIPT_DIR/out


sudo "$SCRIPT_DIR/mkarchiso" -v -w  "$work_dir" -o "$out_dir" "$SCRIPT_DIR/arm64"