# Day 1: 转行 Web3 开发，我被“几毛钱”的过路费狠狠上了一课 ⛽

今天的任务本该很简单：为了配合课程实操，去体验一下 ETH 质押。结果一顿操作猛如虎，直接把自己关进了“小黑屋”：

### 🚨 遭遇死锁 (The Deadlock)

1.  **起因**：想把钱包里的 `USDT` 转回交易所买 `ETH`。
2.  **死锁**：点击转账 → 报错。才发现钱包里虽然有钱，但没有 `BNB` 做 Gas 费。
3.  **悖论**：我有 **$10** 资产，却付不起 **$0.002** 的过路费。因为付不起路费，所以那 10U 取不出来换路费。🤷‍♂️

就在我准备充值的时候，发现交易所角落里还剩 **0.82U** 的“陈年老灰”。

### 💡 极限自救 (The Solution)

> 核心逻辑：利用 CeFi 的小额兑换为空投 Gas。

* ✅ 用这 0.82U 买了点 BNB
* ✅ 提现空投进 Web3 钱包
* ✅ 成功激活链上交易
* ✅ 赎回资金 → 买入 ETH → 完成 WBETH 质押

**Key Takeaway:** 虽然只是几十块钱的操作，但这堂关于 **“没有 Gas 就寸步难行”** 的去中心化铁律，比任何书本记得都牢。

---

**理论** ✅ | **实践** ✅ | **踩坑** ✅

明天继续死磕 Web3。👊
*Section 1 Completed. Next: Solidity Basics. 这里的规则，由代码定义。*

# Day 1: Getting "Soft-locked" by Gas Fees ⛽

My task today was simple: Try out ETH liquid staking. Instead, I learned a hard lesson about EVM chains.

🚨 The Deadlock:

Goal: Transfer USDT from wallet to CEX to buy ETH.

Error: Transaction failed. I had the asset ($10 USDT), but 0 BNB for gas.

The Paradox: I couldn't move the USDT because I couldn't pay the $0.002 fee. I was rich in assets but poor in gas. 🤷‍♂️

💡 The Fix: Found $0.82 of "dust" left on a CEX exchange.

✅ Converted dust to BNB.

✅ Sent to wallet to unfreeze the chain.

✅ Swapped for ETH -> Staking complete.

Key Takeaway: In Web3, "No Gas = No Service." It’s a decentralized law of physics.

Theory ✅ | Practice ✅ | Mistakes ✅ Next Stop: Solidity Basics. 👊

[https://github.com/WonderfulWan8]

# Day 2 转行 Web3：被前端 UI 和平行宇宙狠狠戏耍的一天 🤡

写惯了 Web2 的代码，今天差点被两个“灵异事件”搞崩心态。

### 1️⃣ 👻 消失的测试币 (The "Ghost Funds" Incident)
**现象**：刚领了 Sepolia ETH，去 Etherscan 查余额却是 0。
🥶 **惊恐**：水龙头坏了？还是我被黑了？
🕵️ **破案**：犯了跨位面错误。我在 **Mainnet Explorer** 查 **Sepolia** 的资产。虽然钱包地址在所有 EVM 链上长得一样，但它们是互不相通的平行宇宙。主网的那个地址确实是穷光蛋。
💡 **教训**：先看 URL (`sepolia.etherscan.io`)，再说话。不要在地球地图上找月球的坐标。

### 2️⃣ ⛽ 消失的 Gas 费 (The "Missing" Gas Mystery)
**现象**：转账 0.025 ETH，MetaMask 显示余额刚好减少 0.0250。
🤔 **疑惑**：Gas 费去哪了？被豁免了？还是 UI 坏了？
🕵️ **破案**：查了链上 Raw Data 发现，是 **前端 UI 的障眼法**。
* **链上真相**：支出 = 0.025 (本金) + 0.0000315 (Gas)。
* **前端谎言**：MetaMask 为了美观，直接把小数点后 5 位四舍五入，让我误以为 Gas 费是 0。
💡 **教训**：前端是给人看的（有欺骗性），链上数据才是给机器看的（绝对诚实）。

---

**Web3 第一法则**：Trust Code, Verify Data, Ignore the UI. 📉

#Web3 #Solidity #EVM #100DaysOfCode #BuildInPublic

**# Day 2: Parallel Universes & Frontend Lies 🤡**

Today I learned (the hard way) that Web3 development is 90% debugging my own assumptions.

**👻 The "Ghost Funds" Scare:**
* **Panic:** Claimed Sepolia ETH, but Etherscan showed 0 balance.
* **Fix:** Realized I was checking **Mainnet** Etherscan. Same address, different universe.
* **Lesson:** Always check the URL prefix first. Don't look for moon coordinates on a map of Earth.

**⛽ The "Missing Gas" Mystery:**
* **Confusion:** Sent 0.025 ETH, wallet balance dropped by exactly 0.025. Thought gas was free?
* **Reality:** Checked raw chain data. Gas was paid, but the UI **rounded up** the numbers for "better UX", hiding the fee.
* **Lesson:** UIs lie to humans. Raw data speaks truth to machines.

**Status:**
Environments set. Lessons learned. Now deploying `SimpleStorage.sol`. 🚀

Day 3 转型 Web3：从“脚本小子”到“全栈工程师”的硬核一日。🛠️

今天不只是写代码，而是把吃饭的家伙（环境+网络+安全）全部重构了一遍。

1️⃣ 环境攻坚 (The Setup) 告别 Remix 舒适区，本地部署 Foundry。 🛑 阻碍：GFW 拦截，终端 curl 443 端口连接失败；forge 路径找不到；项目结构混乱导致 Is a directory 报错。 🛡️ 破局：手动下载二进制包 -> 配置 https_proxy -> 重写 .zshenv -> 规范 src/script 目录分离。 ✅ 结果：本地成功部署 SimpleStorage 合约，绿色的 Script ran successfully 是最好的奖赏。

2️⃣ 基建掌控 (Infrastructure) 为了极致的网络权限，折腾了一台 OpenWrt (Kwrt) 软路由。 🔌 操作：解决 IP 冲突 (10.0.0.1)，配置混合加密 Wi-Fi。 💡 感悟：无论是智能合约还是路由器，核心都是拿回 Root 权限。

3️⃣ 安全实战 (Security Ops) 调研了一个“钱包激活”资金盘。 🕵️ 鉴别：正经 DApp 用签名 (Sign)，骗子才让你手动转账 (Transfer 0.001 BNB)。 ⚠️ 教训：前端 UI 是骗人的，链上逻辑才是诚实的。

4️⃣ 理论内化 (The Theory)

车与引擎：区块链结构 (Hash Chain) 是车身，共识 (PoW/PoS) 是引擎。

数学验证：验证签名 = 不泄露私钥证明“我有钱”。

🍲 结尾：一碗热干面慰劳自己。环境通了，网络稳了，路走宽了。

Day 3 Transitioning to Web3: From Script Kiddie to Full-Stack Engineer. 🛠️

Today wasn't just about code; it was about rebuilding the entire stack (Environment + Network + Security).

1️⃣ Engineering Setup (Foundry) Left the Remix comfort zone to deploy Foundry locally. 🛑 Blocker: Network blocked by GFW (Port 443 failure); forge path issues; Is a directory errors due to poor structure. 🛡️ Fix: Manual binary install -> Configured https_proxy -> Patched .zshenv -> Refactored src/script separation. ✅ Result: Successfully deployed SimpleStorage locally. Seeing that green Script ran successfully was the ultimate reward.

2️⃣ Infrastructure Control Configured an OpenWrt (Kwrt) router for total network authority. 🔌 Ops: Resolved IP conflicts (Subnet 10.0.0.1) and secured Wi-Fi. 💡 Insight: Whether it's smart contracts or hardware, it's all about owning Root Access.

3️⃣ Security Research Investigated a "Wallet Activation" scam. 🕵️ Analysis: Legitimate DApps ask to Sign; Scams ask to Transfer (0.001 BNB). ⚠️ Lesson: The UI lies; only the on-chain logic tells the truth.

4️⃣ Core Theory

Car vs Engine: Blockchain structure (Hash Chain) is the car; Consensus (PoW/PoS) is the engine.

Verification: Verifying signatures = Proving ownership without revealing the private key.


# Day 4: 硬件突围与基建主权，今天搞网络

**今天的任务本该很简单：继续学习 Web3 知识。结果一顿操作猛如虎，直接把自己关进了物理层面的“小黑屋”：**

### 🧨 遭遇死锁 (The Physical Deadlock)

1. **起因**：想在 Web3 的世界里加速，却被电信光猫的“封闭模式”卡住了脖子。光猫默认路由模式导致 RAX3000M 沦为二级路由，无法通过 Kwrt 深度掌控分流策略。
2. **死锁**：没有超级密码无法改桥接 -> 无法拨号 -> 无法获得干净的公网 IP 环境。
3. **悖论**：我有 $500M$ 的带宽资源，却因为没有光猫的底层权限，连最基础的 GitHub 仓库都拉不动。

就在我准备放弃的时候，决定利用 CeFi（闲鱼）的专业服务完成物理自救。

### 💡 极限自救 (The Infrastructure Solution)

> **核心逻辑：下放底层权限，重构网络拓扑。**

* ✅ **咸鱼借力**：找人远程破解光猫，强制开启桥接模式。
* ✅ **拨号夺权**：RAX3000M 成功承载 PPPoE 拨号，Kwrt 系统全面接管网络主权。
* ✅ **激活代理**：配置 PassWall 节点订阅，成功拉取 25 个全球加密节点，Web3 通道正式通车。
* ✅ **兼容性适配**：针对 2.4G 智能家居（小爱音箱）连接死锁，强行将带宽压低至 **20MHz** 并手动锁定信道 1，物理唤醒了处于“假死”状态的无线芯片。

**Key Takeaway：虽然只是几小时的设备调试，但这种“不掌握物理底层就无法掌控应用层”的去中心化铁律，比任何书本记得都牢。没有 Gas 费寸步难行，没有底层的网关主权，Web3 就是空中楼阁。**

---

**理论** ✅ | **实践** ✅ | **踩坑** ✅

明天开始，回归代码战场。👊
***Section 1 Completed. Next: Solidity Basics. 这里的规则，由代码定义。***