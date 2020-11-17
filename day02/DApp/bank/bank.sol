// This needs to be the first line.
pragma solidity ^0.4.18;

// give your contract a name
contract SotoLABbank {
    
    // this declares a key/value array called balanceAccount.
    // the key is address and the value is an unsigned integer
    mapping (address => uint) balanceAccount;    
    
    // declare a deposit function that takes an input called amount
    function deposit(uint amount) public {
        // add amount to the balance of the sender
        balanceAccount[msg.sender] += amount;
    }
    
    // a getBalance function that accepts no inputs but returns
    // the amount in the balanceAccount array
    function getBalance() returns (uint balance){
        return balanceAccount[msg.sender];
    }
}