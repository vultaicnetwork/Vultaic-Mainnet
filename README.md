Vultaic Core integration/staging tree
=====================================

To see how to run VLC, please read the respective files in [the doc folder](doc)

What is Vultaic?
----------------

Vultaic is a revolutionary digital currency that stands at the intersection of blockchain and artificial intelligence. It is designed to democratize access to AI technology and foster open-source AI initiatives. VLC enables instant payments to anyone, anywhere in the world, and allows the creation of assets (tokens) on its network. These assets can be used for various purposes, including AI generated NFT's.

VLC operates on a peer-to-peer technology with no central authority, meaning transactions and money or NFT issuance are carried out collectively by the network.

The VLC protocol is built on principles of fairness, transparency, and decentralization. It uses the ASIC-resistant KawPoW algorithm during the PoW period to ensure a fair launch and encourage widespread participation. A significant evolution in the protocol is the transition to the PoUW system, where miners' computational resources are devoted to tangible tasks.

VLC introduces a sustainable and balanced economic model. Initially, the protocol capitalizes on a PoW mechanism, granting miners a block reward of 500 VLC coins for every block. As VLC evolves, transitioning to the PoUW system and the associated Proof-of-Stake (PoS) mechanisms, there will be a phased reduction in block rewards to encourage early adoption and active participation.

VLC is more than just a digital currency; it's a platform for AI enthusiasts to experiment, build, and contribute, thereby democratizing AI technology and helping pioneer the next era of open-source AI advancements. 

# VLC Coin Information

- **Official Site:** [https://vultaicnetwork.com/](https://vultaicnetwork.com/)
- **Pool:** [https://pool.rplant.xyz/#vultaic#connect](https://pool.rplant.xyz/#vultaic#connect)
- **Official Explorer:** [https://explorer.vultaicnetwork.com/](https://explorer.vultaicnetwork.com/)

## VLC Coin Specifications

- **P2P Port:** 9151
- **RPC Port:** 9150
- **Block Time:** 1 minute
- **Block Reward:** 500 VLC (450 reward, 50 donation)


License
-------

Vultaic Core is released under the terms of the MIT license. See [COPYING](COPYING) for more information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](TODO) are created
regularly to indicate new official, stable release versions of VLC Core.

Active development is done in the `develop` branch.  *TODO

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

Please join us on discord in #development.
https://discord.com/invite/m6ZXXM2M2Y

Testing
-------

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



