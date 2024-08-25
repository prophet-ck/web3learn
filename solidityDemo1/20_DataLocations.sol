// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataLocations {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;

    function f() public view {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal view {
        // do something with storage variables
        assert(_arr.length == 0);
        assert(_myStruct.foo == 0 );
    }

    // You can return memory variables
    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        // do something with memory array
        arr = _arr;
    }

    function h(uint256[] calldata _arr) external {
        // do something with calldata array
        arr = _arr;
    }
}