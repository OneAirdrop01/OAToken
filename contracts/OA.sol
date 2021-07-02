// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Snapshot.sol";

/**
 * @title MOI Token
 * @dev Mitable, Burnable, ERC20 Snapshot Token
 */
contract OA is ERC20Burnable, ERC20Snapshot, Ownable {
    using SafeMath for uint256;

    constructor(
        uint256 _totalSupply,
        string memory _name,
        string memory _symbol
    ) public ERC20(_name, _symbol) {
        _mint(msg.sender, _totalSupply);
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20, ERC20Snapshot) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
