var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
var HelloWorld = artifacts.require("./HelloWorld.sol")

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin, HelloWorld);
  deployer.deploy(MetaCoin);
  // In order to deploy any given contract, you need to add this line in. Migrations
  // are not handled by default
  deployer.deploy(HelloWorld);
};

// Once this is deployed, it can be accessed with the cli command 'truffle consolet'
