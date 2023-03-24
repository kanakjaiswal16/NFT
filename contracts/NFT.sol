// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private tokenIDs;

    constructor() ERC721("Bayern Munich", "FCB") {}

    function mintNFT(
        address recipient,
        string memory tokenURI
    ) public onlyOwner returns (uint256) {
        tokenIDs.increment();

        uint256 newItemID = tokenIDs.current();
        _mint(recipient, newItemID);
        _setTokenURI(newItemID, tokenURI);
        return newItemID;
    }
}
