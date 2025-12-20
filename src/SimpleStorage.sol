// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // 声明版本

contract SimpleStorage {
    // 这里才是写逻辑的地方
    uint256 public myFavoriteNumber; // 定义一个变量
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber; // 修改变量的值
    }
}
