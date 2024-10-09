const EnergyTrading = artifacts.require("Energytrading");

module.exports = function (deployer) {
  deployer.deploy(EnergyTrading);
};
