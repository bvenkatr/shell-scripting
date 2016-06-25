#!/usr/bin/env bash

#This is how we can create functions in shell scripting
function usage() {
    cat << MLS
    I am first line This is a Multi Line String(MLS)
    This is a second line string
    This is third line

    Your OS name is $(uname -s);
MLS
}

usage;
