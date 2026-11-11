// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Token {
    event Transfer(address sender, address receiver, uint256 amount);


    uint256 public totalSupply;
    string public name = "BrokeBoyLearner";
    string public symbol = "BBL";
    uint8 public decimals = 18;

    mapping(address => uint256) public balance;

    constructor(){
        totalSupply = 1000 * (10 ** uint256(decimals));
        balance[msg.sender] = totalSupply;
    }

    function balanceOf(address _holder) external view returns(uint256){
        return balance[_holder];
    }

    function transfer(address _receipient, uint256 _amount) public returns(bool){
        require(balance[msg.sender] >= _amount);

        balance[msg.sender] -= _amount;
        balance[_receipient] += _amount;

        emit Transfer(msg.sender, _receipient, _amount);
        
        return true;
    }
}