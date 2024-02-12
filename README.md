## Vultaic Core integration/staging tree

To see how to run VLC, please read the respective files in [the doc folder](doc)

## What is Vultaic?

$VLC with a power of Kawpow Integration, Hashrate Marketplace & a cutting-edge proof-of-work GPU mining coin ⛏️ Vultaic: Be Your Own Vault

## VLC Coin Information

- **Official Site:** [https://vultaicnetwork.com/](https://vultaicnetwork.com/)
- **Pool:** [https://pool.rplant.xyz/#vultaic#connect](https://pool.rplant.xyz/#vultaic#connect)
- **Official Explorer:** [https://explorer.vultaicnetwork.com/](https://explorer.vultaicnetwork.com/)

## VLC Coin Specifications

- **P2P Port:** 9151
- **RPC Port:** 9150
- **Block Time:** 1 minute
- **Block Reward:** 500 VLC (450 reward, 50 donation)

## License

Vultaic Core is released under the terms of the MIT license. See [COPYING](COPYING) for more information or see https://opensource.org/licenses/MIT.

## Development Process

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](TODO) are created
regularly to indicate new official, stable release versions of VLC Core.

Active development is done in the `develop` branch.  *TODO

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

Please join us on discord in #development.
https://discord.com/invite/m6ZXXM2M2Y

## Testing

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

Testnet is up and running and available to use during development.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

### Credits
https://www.raininfotech.in/
AIPG Fork
