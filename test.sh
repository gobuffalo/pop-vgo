#!/bin/bash

set -ex

export GO111MODULE=on

rm go.*
go1.11beta3 mod init
cat go.mod
go1.11beta3 build -v .
go1.11beta3 mod graph
cat go.mod | grep pop
