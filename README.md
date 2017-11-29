# Compatibility Standard

## Abstract

The [Compatibility Standard](https://compat.spec.whatwg.org/) describes a collection of non-standard (and often vendor-prefixed) CSS properties and DOM APIs that web browsers need to support for compatibility with the de facto web.

## Code of conduct

We are committed to providing a friendly, safe and welcoming environment for all. Please read and
respect the [WHATWG Code of Conduct](https://whatwg.org/code-of-conduct).

## Contribute

In short, change `compatibility.bs` and submit your patch, with a
[good commit message](https://github.com/erlang/otp/wiki/Writing-good-commit-messages). Consider
reading through the [WHATWG FAQ](https://wiki.whatwg.org/wiki/FAQ) if you are new here.

Please add your name to the Acknowledgments section in your first pull request, even for trivial
fixes. The names are sorted lexicographically.

If you want to preview the spec locally, you can either use a locally installed copy of
[Bikeshed](https://github.com/tabatkins/bikeshed) by running `make` or use the HTTP API version by
running `make remote`.

If you want to do a complete "local deploy" including commit and/or branch snapshots, run

```
make deploy
```

Note that this still requires access to the network.

Run `bikeshed watch` to enable fancy-mode (which sets up a watcher and auto-rebuilds the spec every time it changes).

Contributions are welcome, so long as you agree to the [CC0 license](LICENSE). :rainbow: :stars:
