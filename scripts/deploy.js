async function main() {
  const NFT = await ethers.getContractFactory("NFT");

  // Start deployment, returning a promise that resolves to a contract object
  const nFT = await NFT.deploy();
  console.log("Contract deployed to address:", nFT.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
//0x55e65Fd20B38FD37cd158317FD4ecB88Cb916351
