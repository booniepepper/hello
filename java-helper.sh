#!/bin/sh

REL="$(dirname "${0}")"

/usr/bin/env java -jar "${REL}/../jar/greet.jar" "${@}"

