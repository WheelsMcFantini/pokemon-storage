// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract pokemonStorage {
    string myfavoritePokemon;

    struct Person{
        string favoritePokemon;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => string) public nameToFavoritePokemon;


    function store(string memory _favoritePokemon) public {
        myfavoritePokemon = _favoritePokemon;
    }

    function retrieve() public view returns(string memory) {
        return myfavoritePokemon;
    }

    function addPerson(string memory _name, string memory _favoritePokemon) public {
        listOfPeople.push(Person(_favoritePokemon, _name));
        nameToFavoritePokemon[_name] = _favoritePokemon;
    }
}
