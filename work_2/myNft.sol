// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;          // 自增 tokenID

    constructor() ERC721("MyNFT", "MNFT") Ownable(msg.sender) {}

    /**
     * 铸造 NFT
     * @param recipient 接收地址
     * @param tokenURI  元数据链接
     * @return newTokenId 新 tokenID
     */
    function mintNFT(address recipient, string memory tokenURI)
        public
        payable
        returns (uint256 newTokenId)
    {
        _tokenIds++;
        newTokenId = _tokenIds;
        _mint(recipient, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
    }
}