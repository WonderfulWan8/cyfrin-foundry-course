// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating our version

contract SimpleStorage {
    // Basic Types: boolean, unit, int, address, bytes
    uint256 myFavoriteNumber; // default 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public person;

    // Devil => 666
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        // Person memory newPerson = Person(_favoriteNumber,_name);
        person.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    // view pure disallowed update state
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
