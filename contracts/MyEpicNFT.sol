// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";
import "hardhat/console.sol";
contract MyEpicNFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC721 ("MountainNFT", "MTNFT") {
        console.log("This is my NFT contract. Wooo!");
    }

    function makeAnEpicNFT() public {
        uint256 newItemId = _tokenIds.current();
        // Mint the NFT and send to user
        _safeMint(msg.sender, newItemId);
        // Set the NFTs data
        _setTokenURI(newItemId, "https://jsonkeeper.com/b/EIDV");
        console.log("An NFT with ID %s has been minted to %s", newItemId, msg.sender);
        // Increment the counter when next NFT is minted
        _tokenIds.increment();
    }
}