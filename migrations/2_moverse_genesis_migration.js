const MoverseGenesisToken = artifacts.require("MoverseGenesisToken");

const TOTAL_SUPPLY="2000000000000000000000000000";
module.exports = function (deployer) {
  deployer.deploy(MoverseGenesisToken, TOTAL_SUPPLY);
};

