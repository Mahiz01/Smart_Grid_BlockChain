const Energytrading = artifacts.require("Energytrading");

contract("Energytrading", accounts => {
  it("should allow users to trade energy", async () => {
    const instance = await Energytrading.deployed();
    await instance.tradeEnergy(100, 5, { from: accounts[0] });

    const balance = await instance.balanceOf(accounts[0]);
    assert.equal(balance.toString(), '100', "User balance should be 100");
  });
});
