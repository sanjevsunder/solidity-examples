pragma solidity ^0.4.20;

contract Sender {

    address Receiver;

    function Sender() {
        Receiver = <ENTER_RECEIVER_CONTRACT_ADDRES_HERE>;
    }

    function() public payable {}

    function sendEthByCall() public {
        Receiver.call.gas(200000).value(10000)();
    }

    function sendEthBySend() public {
        Receiver.send(10000);
    }

    function sendEthByTransfer() public {
        Receiver.transfer(10000);
    }

    function getBalance() public view returns (uint256) {
        return this.balance;
    }
}
