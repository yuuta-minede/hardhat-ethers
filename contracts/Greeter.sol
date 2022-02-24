pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OriginToken is ERC20{

  string constant private TOKEN_NAME = "ABC Token";
  string constant private TOKEN_SYMBOL = "ABC";

  uint256 private inital_supply = 2_000_000;

  constructor () public ERC20(TOKEN_NAME, TOKEN_SYMBOL) {
      _mint(_msgSender(), inital_supply * 10 ** decimals());
  }

  function mint(uint256 amount) public {
    _mint(_msgSender(), amount * 10 ** decimals());
  }

  // function transferERC20(address to, uint256 amount) public returns (bool) {
  //   transfer(to, amount*10^18);
  //   return true;
  // }
}
