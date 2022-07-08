//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Greeter {
    string private greeting;
    uint256 private myAge;

    constructor(string memory _greeting) {
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    // 40302
    function setGreeting1(string memory _greeting) public {
        for (uint256 i; i <= 50; ++i) {
            if (i == 50) {
                greeting = _greeting;
            }
        }
    }

    //40557
    function setGreeting2(string memory _greeting) public {
        for (uint256 i; i <= 50; i++) {
            if (i == 50) {
                greeting = _greeting;
            }
        }
    }

    //39842
    function setGreeting3(string calldata _greeting) public {
        for (uint256 i; i <= 50; ++i) {
            if (i == 50) {
                greeting = _greeting;
            }
        }
    }

    //40075
    function setGreeting4(string calldata _greeting) public {
        for (uint256 i; i <= 50; i++) {
            if (i == 50) {
                greeting = _greeting;
            }
        }
    }

    //43940
    function addToMyAge1(uint256 _newAge) public {
        myAge = myAge + _newAge;
    }

    //43954
    function addToMyAge2(uint256 _newAge) public {
        myAge += _newAge;
    }
}
