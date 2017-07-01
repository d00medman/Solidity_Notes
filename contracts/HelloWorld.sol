pragma solidity ^0.4.4;

/*import "./ConvertLib.sol";*/

contract HelloWorld {

    // you can instantiate state variables as either public or private
    uint public balance;

    /*mapping is the solidity equivalent of building a hash table. Given that this language is built around blockchain/ethereum.
    it has address as a native data type*/
    /*This is a map of all balances in the system where it takes an address and stores an associated uint*/
    mapping (address => uint) balances;

    // Constructor
    // Runs once on contract creation (a lot like java)
    // Runs on deployment and never runs again
    function helloWorld(){
      /*Every operation costs gas to run Computations are cheaper than storing data on the blockchain because it does not need to write to each node of the chain*/
      /*Calls to hit this balance are free (they requre no gas), functions which mutate
      the blockchain are not free.*/
        balance = 1000;
        /*The below function is how one would go about querying the balance of this contract (but it seems to be a bit broken)*/
        /* HelloWorld.deployed()
          .then(function(instance) {
            return instance.balance.call();
            })
            .then(function(balance) {
              console.log(balance);
              });﻿*/
    }

    function deposit(uint _value) returns(uint _newValue) {
      balance += _value;
      return balance;
      /*This function, which updates the balance, apparently will cost around 20k gas*/
    }

    /*Return constant queries but does not change state*/
}

/*Running truflle compile generates json files that allow us to allows us to interact easily w/our contracts*/
/*truffle migrate is the functional equivalent of running buildscripts*/

/*Querys like using the call function are free actions*/
/*Truffle console uses promises, which is super fucking annoying*/
