#!/bin/bash

set -ex

export GO111MODULE=on

rm go.*
go1.11rc1 mod init
cat go.mod
go1.11rc1 build -v .
go1.11rc1 mod graph
cat go.mod | grep pop
