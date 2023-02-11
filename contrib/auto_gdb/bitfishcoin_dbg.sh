#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.bitfishcoincore/bitfishcoind.pid file instead
bitfishcoin_pid=$(<~/.bitfishcoincore/testnet3/bitfishcoind.pid)
sudo gdb -batch -ex "source debug.gdb" bitfishcoind ${bitfishcoin_pid}
