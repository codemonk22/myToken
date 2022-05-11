pragma solidity >=0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

//contract SampleToken is ERC20Detailed, ERC20 {
contract SampleToken is ERC20 {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialSupply
    ) public ERC20() {
        require(_initialSupply > 0, "INITIAL_SUPPLY has to be greater than 0");
        _mint(msg.sender, _initialSupply);
    }
}

// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
//pragma solidity ^0.8.0;

//import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// contract GLDToken is ERC20 {
//     //constructor(uint256 initialSupply) ERC20("Gold", "GLD") {
//     constructor(uint256 initialSupply) ERC20() {
//         _mint(msg.sender, initialSupply);
//     }
// }
