const Migrations = artifacts.require("./voting.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
