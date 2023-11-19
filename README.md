
Conversation opened. 1 read message.


Skip to content
Using Gmail with screen readers
Document from Mub👳🏾‍♀️
Inbox

mubaraq abuhasan
Attachments
11:07 AM (2 hours ago)
to me

Solidity - Token - 1.txt 
 2 Attachments
  •  Scanned by Gmail
# Mubaz Token (MBZ) Smart Contract

## Overview

This repository contains the source code for the Mubaz Token (MBZ) smart contract written in Solidity. The Mubaz Token is an ERC-20 compliant token on the Ethereum blockchain, featuring basic functionalities such as minting and burning.

## License

This smart contract is released under the MIT License. See the [LICENSE](https://chat.openai.com/c/LICENSE) file for details.

## Smart Contract Details

-   **Name**: Mubaz
-   **Symbol**: MBZ
-   **Decimals**: 18

## Prerequisites

Make sure you have the Solidity compiler version 0.8.18 or compatible versions installed to compile and deploy the smart contract.

## Deployment

1.  Deploy the smart contract to an Ethereum-compatible blockchain.
2.  Provide the initial supply of tokens to the constructor during deployment.


`// Example deployment with an initial supply of 1,000 tokens
MubazToken mubazToken = new MubazToken(1000);` 

## Token Actions

### Minting

Minting creates new tokens and assigns them to a specified address.



`// Mint 700 tokens and assign them to the specified address
mubazToken.mint(addressTo, 500);` 

### Burning

Burning removes tokens from a specified address, reducing the total supply.


`// Burn 300 tokens from the specified address
mubazToken.burn(addressFrom, 300);`
Token Readme.txt
Displaying Token Readme.txt.
