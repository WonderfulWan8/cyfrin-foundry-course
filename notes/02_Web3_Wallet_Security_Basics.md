# Web3 Wallet Security Basics (Web3 钱包安全基础)

## 核心目标
* 学会“读懂”小狐狸钱包 (MetaMask) 弹出的签名请求。
* 能够区分“普通交易”和“恶意钓鱼”。

## 1. 签名 (Signatures) vs 交易 (Transactions)
* **交易 (Transaction)**: 会上链，需要花 Gas 费。比如转账、Swap。
* **签名 (Signature)**: 不上链，免费。用来证明“我是账号主人”。
    * *风险点*: 很多钓鱼网站用“免费签名”骗你授权，一旦签了，黑客就有权划走你的币（比如 Permit 签名）。

## 2. 读懂十六进制 (Hex Data)
* 当你在钱包看到一串 `0x...` 的乱码时，如何解码？
* ... (等待课程补充)

## 3. 常见骗局 (Common Scams)
* **Seaport 签名**: 看起来像乱码，其实是把你的 NFT 0元卖给黑客。
* **Address Poisoning (地址投毒)**: 黑客生成一个和你常转账地址首尾相同的地址，诱导你复制粘贴错。

# 名词解释
## 热钱包 (Hot Wallet)
* 用于日常交易的、随时可以访问的、有私钥的账户。
## 冷钱包 (Cold Wallet)
* 用于长期保存的、不经常访问的、没有私钥的账户。Your Keys, Your Crypto。
## 硬件钱包 (Hardware Wallet)
* 一种物理设备，用于存储私钥，提供额外的安全层。 如 Ledger、Trezor 等，提供额外的安全层。
## 浏览器插件 (Browser Extension)
* MetaMask 是一种浏览器插件，用于与以太坊网络交互。