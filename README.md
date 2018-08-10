# Pop/Go Modules Bug

This repo showcases a bug where, in Go `1.11.beta3`, Go modules refuse to pick a version of Pop greater than `4.5.9`.

Assuming you have the beta installed and available as `go1.11beta3` running the `test.sh` file should reproduce the problem.

## The Problem In Brief

Even when specifying a `go.mod` file with a specific version, greater than `4.5.9`, Go modules will not pull that version and instead keeps stopping at versio `4.5.9`

```
module pop-vgo

require (
	github.com/gobuffalo/pop v4.6.3
)
```

```
module pop-vgo

require (
	github.com/cockroachdb/cockroach-go v0.0.0-20180212155653-59c0560478b7 // indirect
	github.com/fatih/color v1.7.0 // indirect
	github.com/go-sql-driver/mysql v1.4.0 // indirect
	github.com/gobuffalo/makr v1.1.1 // indirect
	github.com/gobuffalo/packr v1.13.1 // indirect
	github.com/gobuffalo/pop v4.5.9+incompatible
	github.com/gobuffalo/uuid v2.0.0+incompatible // indirect
	github.com/gobuffalo/validate v2.0.0+incompatible // indirect
	github.com/jmoiron/sqlx v0.0.0-20180614180643-0dae4fefe7c0 // indirect
	github.com/lib/pq v0.0.0-20180523175426-90697d60dd84 // indirect
	github.com/markbates/going v1.0.1 // indirect
	github.com/mattn/anko v0.0.6 // indirect
	github.com/mattn/go-colorable v0.0.9 // indirect
	github.com/mattn/go-isatty v0.0.3 // indirect
	github.com/spf13/pflag v1.0.2 // indirect
	gopkg.in/yaml.v2 v2.2.1 // indirect
)
```
