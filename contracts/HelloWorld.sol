pragma solidity ^0.4.4;

/*import "./ConvertLib.sol";*/

contract HelloWorld {

    // you can instantiate state variables as either public or private
    uint public balance;

    // Constructor
    // Runs once on contract creation (a lot like java)
    // Runs on deployment and never runs again
    function helloWorld(){
        balance = 1000;
    }
    // Every operation costs gas to run
    // Computations are cheaper than storing data on the blockchain because it
    // does not need to write to each node of the chain
}

/*Running truflle compile generates json files that allow us to allows us to interact easily w/our contracts*/
/*truffle migrate is the functional equivalent of running buildscripts*/
