// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
import { ethers } from "hardhat";

async function main() {
  const MyNFT = await ethers.getContractFactory('MyNFT');
  const nft = await MyNFT.deploy();
  await nft.deployed();
  console.log('MyNFT deployed to:', nft.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
