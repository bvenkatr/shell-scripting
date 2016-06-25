#!/usr/bin/env bash

#http://stackoverflow.com/questions/2500436/how-does-cat-eof-work-in-bash

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
