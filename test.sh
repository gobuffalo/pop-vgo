#!/bin/bash

set -e

export GO111MODULE=on

rm go.mod
cp go.mod.start go.mod
cat go.mod
go111 build -v .
go111 mod graph
cat go.mod
./pop-vgo
