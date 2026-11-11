# BrokeBoyLearner Token

A simple ERC20-style Solidity token contract built with Foundry. The project implements a minimal token that mints the full supply to the deployer and supports transfers between addresses.

## Contract

- Name: `BrokeBoyLearner`
- Symbol: `BBL`
- Decimals: `18`
- Initial total supply: `1,000 * 10^18` tokens
- Contract file: `src/Token.sol`

The contract exposes:

- `totalSupply()`
- `name()`
- `symbol()`
- `decimals()`
- `balanceOf(address)`
- `transfer(address,uint256)`
- `Transfer` event

## Features

- Tracks balances per wallet
- Mints all supply to the deployer in the constructor
- Validates sufficient funds before transfers
- Emits transfer events for off-chain tracking

## Prerequisites

Install Foundry if you do not already have it:

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

## Quick Start

### Install dependencies

```bash
forge install
```

### Compile the contract

```bash
forge build
```

### Run tests

```bash
forge test
```

### Format code

```bash
forge fmt
```

### Start local chain

```bash
anvil
```

### Deploy locally

```bash
forge script script/Counter.s.sol:CounterScript --rpc-url http://127.0.0.1:8545 --private-key <PRIVATE_KEY>
```

> This project currently includes Foundry starter script/test files. You can replace them with a deployment script for the `Token` contract as your project evolves.

## Project Structure

```text
Token/
├── src/
│   └── Token.sol
├── script/
│   └── Counter.s.sol
├── test/
│   └── Counter.t.sol
├── foundry.toml
├── README.md
└── .gitignore
```

## License

MIT
