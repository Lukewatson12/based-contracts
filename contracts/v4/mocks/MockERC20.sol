pragma solidity ^0.4.24;

import "openzeppelin-eth/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-eth/contracts/token/ERC20/ERC20Detailed.sol";


/**
 * @title ERC20Detailed token
 * @dev The decimals are only for visualization purposes.
 * All the operations are done using the smallest and indivisible token unit,
 * just as on Ethereum all the operations are done in wei.
 */
contract MockERC20 is ERC20, ERC20Detailed {
    constructor() public {
        ERC20Detailed.initialize("name", "symbol", 18);
    }
    function mint(
      address to,
      uint256 amount
    )
      public
      returns (bool)
    {
      _mint(to, amount);
      return true;
    }
}
