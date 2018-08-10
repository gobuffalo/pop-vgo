#!/bin/bash

set -e

export GO111MODULE=on

rm go.mod
cp go.mod.start go.mod
cat go.mod
go1.11beta3 build -v .
go1.11beta3 mod graph
cat go.mod
./pop-vgo
