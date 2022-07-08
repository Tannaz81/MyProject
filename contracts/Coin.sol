// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Coin is ERC20 {
    using SafeMath for uint256;
    uint256 MaxSupply = 1000000 ether; // max token supply  1 000 000

    constructor() ERC20("Tannaz", "TC") {
        _mint(msg.sender, MaxSupply); //send 1 000 000 tokens to contract deployer
    }
}
