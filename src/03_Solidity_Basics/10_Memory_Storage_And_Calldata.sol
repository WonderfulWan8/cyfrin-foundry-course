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

    // calldata memory storage
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

/**
1. Storage (存储) —— 永久的硬盘
地位：最高级，最贵。

物理类比：电脑的硬盘 (HDD/SSD)。

特性：

永久性：数据写入区块链，全网节点同步，永远存在（除非你销毁合约）。

状态变量：你在函数外面定义的变量（比如 uint256 public favoriteNumber）默认都是 Storage。

Gas 成本：天价。写一次 Storage (SSTORE) 是你在以太坊上能做的最奢侈的操作之一。

场景：你需要永久保存的数据（比如用户的余额、NFT 的归属）。

2. Memory (内存) —— 临时的草稿纸
地位：中产阶级，价格适中。

物理类比：电脑的内存 (RAM)。

特性：

临时性：只在函数执行的那几毫秒里存在。函数跑完，数据立刻被擦除。

可修改：你可以在函数里读它，也可以改它（比如 _name = "Bob"）。

Gas 成本：便宜。

场景：函数参数、函数内部的临时计算变量。

3. Calldata (调用数据) —— 只读的传真机
地位：最底层，最便宜。

物理类比：只读存储器 (ROM) 或者别人发给你的传真。

特性：

临时性：和 Memory 一样，用完即焚。

不可修改 (Read-only)：这是它和 Memory 最大的区别。你不能在函数里修改 calldata 变量的值。

Gas 成本：白菜价。因为它不需要把数据复制到内存里，直接读取原始请求数据。

场景：主要用于函数参数（尤其是 external 函数的 string 或 array 参数）。
 */
