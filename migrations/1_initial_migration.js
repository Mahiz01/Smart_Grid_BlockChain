
// const Migrations = artifacts.require("Migrations");

// module.exports = async function (deployer) {
//   await deployer.deploy(Migrations);
//   const migrationsInstance = await Migrations.deployed();
//   await migrationsInstance.initialize();
// };

const Migrations = artifacts.require("Migrations");

module.exports = async function (deployer) {
  await deployer.deploy(Migrations);
  const migrationsInstance = await Migrations.deployed();
  await migrationsInstance.initialize(); // Ensure this line is called after deployment
};

