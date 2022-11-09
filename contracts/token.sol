pragma solidity 0.8.0;
//SPDX-License-Identifier: UNLICENSED

import "../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";


contract MyToken is ERC20Capped, Ownable {
    constructor() ERC20("MyToken", "MTKN") ERC20Capped(100000) {
        ERC20._mint(msg.sender, 200000);
    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

    function burnFrom(address account, uint256 amount) public virtual {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
}