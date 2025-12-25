// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating our version

contract SimpleStorage {
    // Basic Types: boolean, unit, int, address, bytes
    uint256 public favoriteNumber; // default 0

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    // view pure disallowed update state
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
