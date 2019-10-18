pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";

contract hermesEduCoin is MintableToken , BurnableToken {
  string public name = "Hermes Edu Coin";
  string public symbol = "HEC";
  uint public decimals = 18;
  uint public INITIAL_SUPPLY = 100000000 * (10 ** decimals);
  address public owner;

  function hermesEduCoin() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    owner = msg.sender;
  }
}
