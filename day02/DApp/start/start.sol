pragma solidity ^0.4.18;

contract Hello
{
	function getBlockNumber() public constant returns (uint) 
	{												
		return block.number;
	}
}
