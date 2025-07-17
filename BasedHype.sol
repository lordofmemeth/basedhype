// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract BasedHype is ERC20, Ownable {
    constructor() ERC20("BasedHype", "BASEDHYPE") Ownable(msg.sender) {
        _mint(msg.sender, 10_000_000_000 * 10**18);
    }
    function burn(uint256 amount) public onlyOwner {
        _burn(msg.sender, amount);
    }
}
