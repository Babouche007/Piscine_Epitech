#! /bin/sh

blih -u baptiste.perrier@epita.fr repository create $1
blih -u baptiste.perrier@epita.fr repository setacl $1 ramassage-ept r
blih -u baptiste.perrier@epita.fr repository getacl $1
