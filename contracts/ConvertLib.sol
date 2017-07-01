pragma solidity ^0.4.4;

/*This is a library file: because it costs gas the larger and larger a contract becomes,
it makes sense to take a frequently used function and place it such a library contract, importing
and using it as needed across contracts. A bit like ruby gems

tl;dr if you have a common computational function, it make more sense to abstract it into a library
and then reference it from your contract*/
library ConvertLib{
	function convert(uint amount,uint conversionRate) returns (uint convertedAmount)
	{
		return amount * conversionRate;
	}
}
