// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC1155/ERC1155.sol)

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DinoFactoryNFT is ERC1155,Ownable {
    using Address for address;
    uint256 tokencount;

    constructor(string memory uri_) ERC1155(uri_) {}

    function mint (uint256 amount ,string memory _uri) public onlyOwner {
     tokencount ++;   
    _mint(_msgSender() ,tokencount ,amount ,"");
    }

    function mintBatch (uint256 [] memory ids ,uint256 [] memory amounts ,bytes memory data) public onlyOwner {
        _mintBatch(_msgSender(), ids, amounts, data);
    }
}