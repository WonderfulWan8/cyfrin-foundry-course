// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating our version

contract SimpleStorage {
    // Basic Types: boolean, unit, int, address, bytes
    uint256 myFavoriteNumber; // default 0

    uint256 listOfFavoriteNumbers; // []

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public myFriend = Person(7,"Pat");
    Person public myFriend = Person({favoriteNumber: 8, name: "Dad"});

    // dynamic array
    Person[] public person;

    // static array
    Person[3] public listOfPeople;

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        // Person memory newPerson = Person(_favoriteNumber,_name);
        person.push(Person(_favoriteNumber, _name));
    }

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    // view pure disallowed update state
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
