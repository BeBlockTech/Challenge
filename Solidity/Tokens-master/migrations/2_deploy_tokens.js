const BeBlockTechToken = artifacts.require(`./BeBlockTechToken.sol`)

module.exports = (deployer) => {
  deployer.deploy(BeBlockTechToken)
}
