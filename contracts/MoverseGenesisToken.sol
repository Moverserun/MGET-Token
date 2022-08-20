// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";


contract MoverseGenesisToken is ERC20, ERC20Burnable, ERC20Pausable {
    constructor(uint256 initialSupply) public ERC20("Moverse Genesis Token", "$MGET") {
        _mint(msg.sender, initialSupply);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20, ERC20Pausable) {
        super._beforeTokenTransfer(from, to, amount);
    }
}