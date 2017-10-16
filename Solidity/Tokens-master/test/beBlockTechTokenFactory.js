const BeBlockTechTokenFactory = artifacts.require('BeBlockTechTokenFactory')

contract('BeBlockTechTokenFactory', function (accounts) {
  it('Verify a BeBlockTech Token once deployed using both verification functions.', async () => {
    const factory = await BeBlockTechTokenFactory.new()
    const newTokenAddr = await factory.createBeBlockTechToken.call(100000, 'Simon Bucks', 2, 'SBX', {from: accounts[0]})
    await factory.createBeBlockTechToken(100000, 'Simon Bucks', 2, 'SBX', {from: accounts[0]})
    const res = await factory.verifyBeBlockTechToken.call(newTokenAddr, {from: accounts[0]})
    assert(res, 'Could not verify the token.')
  })
})
