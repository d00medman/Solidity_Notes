pragma solidity ^0.4.4;

contract HolaMundo {

  address public owner; // This variable is the owner of this contract

  /*mapping is the solidity equivalent of building a hash table. Given that this language is built around blockchain/ethereum.
  it has address as a native data type.
  This is a map of all balances in the system where it takes an address and stores an associated uint*/
  mapping (address => uint) balances;
  /*mappings are slightly different from hash tables in that they are initialized with zero values at all points which are then
  mutated. Maps cannot really be looped through; you need to use a third party service to achieve this functionality*/

  function HolaMundo(){
    owner = msg.sender; // msg.sender is an inbuilt solidity function which takes on the address sending the transaction
    /*Whoever deploys this is stored as its owner*/
    balances[owner] = 1000; // You can no longer query this in the same way you could query balances in HelloWorld: no longer public variables
  }

  function transfer(address _to, uint _value) returns (bool success) {
    /*Conditional logic is virtually identical to standard concepts*/
    if (balances[msg.sender] < _value) {
      return false;
    }

    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
  }

  // This is the function which will query. The constant returns denotes that is a query and thus has no gas charge
  function getBalance(address _user) constant returns (uint _balance){
    return balances[_user]
    /*Basically just doing the public accessor, but this needs to be done because its a map*/
  }

}
