// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract zhioryinyong {

    uint256[] public arr = new uint256[](3);
    uint256[] public arr1 = new uint256[](3);

    uint256[] public arr3;
    uint256[] public arr4 = [4,5,6];

    uint256[] public arr11;
    uint256[] public arr12;

    constructor(uint256[] memory arr13) {
        arr11 = [1,2,3];
        arr13 = arr11;
        // arr13[0] = 6;
        arr11[0] = 6;
    }

    // constructor() {
    //     arr11 = [1,2,3];
    //     arr12 = arr11;
    //     arr11[0] = 6;
    // }

    function testCon() public view returns (uint256,uint256) {
        return (arr11[0],arr12[0]);
    }



    function test1() public returns (uint256,uint256) {
        arr1 = [1,2,3];
        arr = arr1;
        arr1[0] = 6;
        return (arr[0],arr1[0]);
    }

    function test2() public returns (uint256,uint256) {
        arr3 = arr4;
        arr4[0] = 6;
        return (arr3[0],arr4[0]);
    }

    function test3() public pure returns (uint256,uint256) {
        uint256[] memory arr5 = new uint256[](3);
        uint256[] memory arr6 = new uint256[](3);
        arr6[0] = 6;
        arr5 = arr6;
        arr5[0] = 1;
        return (arr5[0],arr6[0]);
    }

        function test4(uint256[] memory arr7) public pure returns (uint256,uint256) {
        uint256[] memory arr8 = new uint256[](3);
        arr7 = arr8;
        arr8[0] = 6;
        return (arr7[0],arr8[0]);
        }

        function test5(uint256[] calldata arr9) public pure returns (uint256,uint256) {
        uint256[] memory arr10 = new uint256[](3);
        arr10 = arr9;
        arr10[0] = 6;
        return (arr9[0],arr10[0]);
    }


}