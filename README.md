# Foundry-erc20-Tokens

This repository contain ERC20 Tokens project in foundry framework.

## To initiate a Foundry project from scratch

- To get basic template of foundry framework.

```bash
  forge init
```

## Quickstart

- Run These command:

```bash
git clone https://github.com/Naman1729/Foundry-erc20-Tokens.git
```

```bash
cd Foundry-erc20-Tokens
```

```bash
forge build
```

## To compile the contract.

```bash
  forge compile
```

## To deploy the contract.

- In Testnet.
  - only deploy

```bash
    forge script script/DeployOurToken.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast -vvvv
```

- In Testnet.
  - deploy and verify

```bash
    forge script script/DeployOurToken.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY -vvvv
```

- In anvil.
  - To run the anvil.

```bash
  anvil
```

- In anvil.
  - deploy.

```bash
  forge script script/DeployOurToken.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY
```

### To test the contract.

```bash
forge test
```

### To check coverage

```bash
forge coverage
```

## For any help

- forge

```bash
  forge --help
```

and

```bash
  forge script --help
```

- cast

```bash
  cast --help
```