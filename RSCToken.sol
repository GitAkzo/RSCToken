// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract RSCToken is IERC20, Ownable {
    using SafeMath for uint256;

    string public constant name = "RSC Coin";
    string public constant symbol = "RSC";
    uint8 public constant decimals = 2;
    uint256 private _totalSupply;

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    constructor(address initialOwner) Ownable(initialOwner) {
        _totalSupply = 1_000_000 * 10 ** uint256(decimals);
        _balances[initialOwner] = _totalSupply;
        emit Transfer(address(0), initialOwner, _totalSupply);
    }

    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function transfer(address recipient, uint256 amount) external override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(amount <= _balances[msg.sender], "ERC20: transfer amount exceeds balance");

        _balances[msg.sender] = _balances[msg.sender].sub(amount, "ERC20: transfer amount exceeds balance");
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external override returns (bool) {
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function allowance(address owner, address spender) external view override returns (uint256) {
        return _allowances[owner][spender];
    }

    function transferFrom(address sender, address recipient, uint256 amount) external override returns (bool) {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(amount <= _balances[sender], "ERC20: transfer amount exceeds balance");
        require(amount <= _allowances[sender][msg.sender], "ERC20: transfer amount exceeds allowance");

        _balances[sender] = _balances[sender].sub(amount, "ERC20: transfer amount exceeds balance");
        _allowances[sender][msg.sender] = _allowances[sender][msg.sender].sub(amount, "ERC20: transfer amount exceeds allowance");
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
        return true;
    }
}
