This repository hosts the [Quirks Mode Standard](https://quirks.spec.whatwg.org/).

### Code of conduct

We are committed to providing a friendly, safe and welcoming environment for all. Please read and
respect the [WHATWG Code of Conduct](https://wiki.whatwg.org/wiki/Code_of_Conduct).

### Pull requests

In short, change `Overview.bs` and submit your patch, with a
[good commit message](https://github.com/erlang/otp/wiki/Writing-good-commit-messages). Consider
reading through the [WHATWG FAQ](https://wiki.whatwg.org/wiki/FAQ) if you are new here.

Please add your name to the Acknowledgments section in your first pull request, even for trivial
fixes. The names are sorted lexicographically.

If you want to preview the spec locally, you can either use a locally installed copy of
[Bikeshed](https://github.com/tabatkins/bikeshed) by running `make` or use the HTTP API version by
running `make remote`.

If you want to do a complete "local deploy" including commit and/or branch snapshots, run
`make deploy`.

### Tests

Tests can be found in the `quirks-mode/` directory of
[`web-platform-tests`](https://github.com/w3c/web-platform-tests).
