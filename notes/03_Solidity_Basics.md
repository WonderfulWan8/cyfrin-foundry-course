# 03 Solidity 基础语法 (Simple Storage)

## 1. 版本控制 (Versioning)
**关键语法**: `pragma solidity <version>;`

### 符号含义
* `0.8.18`: **锁死版本**。编译器必须严格匹配，差一点都不行。
* `^0.8.18`: **向上兼容**。允许 `0.8.18` 到 `0.9.0` (不含) 之间的任何版本。
  * `^` (Caret) = "Current and higher compatible versions".

### ⚠️ 工程铁律 (Best Practice)
* **本地开发/学习**: 可以用 `^` (如 `^0.8.18`)，方便配合 Remix 的默认编译器，省事。
* **生产环境 (Production)**: **绝对禁止使用 `^`**。必须锁死版本 (如 `0.8.18`)。
  * **原因**: 防止未来编译器更新引入未知 Bug 或改变计算逻辑，导致合约被黑。

## 2. 许可声明 (License Identifier)
**关键语法**: `// SPDX-License-Identifier: <License-Type>`
**位置**: 必须放在 Solidity 文件的**第一行**。

### 常用类型
* `MIT`: **最常用**。完全开源，允许任何人随便用、随便改、随便卖，只要保留原作者署名。Patrick 的课程大多用这个。
* `GPL-3.0`: **病毒式开源**。别人可以用你的代码，但如果他们修改并发布了，他们的项目也必须开源。
* `UNLICENSED`: **私有代码**。不授予任何权利，别人不能用。主要用于闭源商业项目。

### ⚠️ 顾问提示
* 这行代码本质上是**注释** (`//`)，不影响程序逻辑，只影响法律和编译器警告。
* **新手无脑选**: `// SPDX-License-Identifier: MIT`

## 2. 基础类型 (Basic Types)
Solidity 支持多种数据类型，以下是最常用的几种：
### 1. 布尔类型 (Boolean)
* 关键字: `bool`
* 取值: `true` 或 `false`
### 2. 整数类型 (Integer)
* 关键字: `uint` (无符号整数), `int` (有符号整数)
* 位数: `uint8`, `uint16`, ..., `uint256` (默认 `uint256`)
* 取值范围:
  * `uint`: 0 到 2^256 - 1
  * `int`: -2^255 到 2^255 - 1
### 3. 地址类型 (Address)
* 关键字: `address`
* 取值: 以太坊地址 (20 字节)
### 4. 字符串类型 (String)
* 关键字: `string`
* 取值: UTF-8 编码的文本  

## 3. 变量声明 (Variable Declaration)
### 1. 状态变量 (State Variables)
* 存储在区块链上，永久保存。
* 关键字: `uint public myNumber;`
### 2. 局部变量 (Local Variables)
* 存储在函数内部，函数执行完毕后销毁。
* 关键字: `uint myLocalNumber = 10;`
注：变量默认不可变，使用 `constant` 或 `immutable` 关键字声明不可变变量。`internal` 关键字用于限制变量的访问范围，仅在合约内部和继承的合约中可见。

## 4. 函数声明 (Function Declaration)
* 关键字: `function <functionName>(<parameters>) public view returns (<returnType>) { ... }`
### 1. 访问修饰符 (Visibility Modifiers)
* `public`: 任何人都可以调用。
* `private`: 只能在合约内部调用。
* `internal`: 只能在合约内部和继承的合约中调用。
* `external`: 只能通过合约外部调用。
* `view`: 函数不会修改状态变量。
* `pure`: 函数既不会修改状态变量，也不会读取状态变量。
* `payable`: 函数可以接收以太币。
* `returns`: 指定函数的返回类型。
* `constructor`: 合约的构造函数，在合约部署时执行一次。
