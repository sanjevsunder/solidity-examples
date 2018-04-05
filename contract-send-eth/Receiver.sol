pragma solidity ^0.4.20;

contract Receiver {

    mapping(address => uint) balances;

    function() public payable {
        balances[msg.sender] = msg.value;
    }

    function getBalance() public view returns (uint256)
    {
        return this.balance;
    }
}
