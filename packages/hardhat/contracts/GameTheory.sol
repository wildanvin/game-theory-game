pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract GameTheory {

  mapping(address => uint) public numbers;
  event SetNumber(address sender, uint number);

  function  selectNumber (uint _number) public {
    numbers[msg.sender] = _number;
    emit SetNumber(msg.sender, _number);
  }


  receive() external payable {}
  fallback() external payable {}
  


}
