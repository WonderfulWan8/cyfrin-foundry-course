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


# Day 5: “U盾”时代与自托管的艺术 🛡️

今天的任务本该是建立“心理防火墙”。虽然因身体透支和网络故障被迫**强制关机**，但这一下午的概念密度极高。我不再只是一个用户，我正在学习如何成为一家银行。

### 🔐 安全协议 (硬技能)

1.  **托管真相 (Custody)**: 彻底搞懂了 **EOA** (MetaMask = 我的保险柜) 和 **CEX** (Kraken = 银行打的白条) 的区别。"Not your keys, not your coins."
2.  **多签逻辑 (Multi-Sig)**: 掌握了 **"X-of-Y"** 签名机制。就像公司董事会——除非多数人同意，否则钱动不了。
3.  **社交恢复 (Social Recovery)**: 学习了 **Shamir's Secret Sharing (SSS)**。那个把私钥切碎分给朋友的“撕碎藏宝图”算法。
4.  **防御模式 (Defense)**: “别信前端网页，只信签名弹窗。” 蜜罐 (Honeypots) 和钓鱼攻击活在网页里，真相活在 Hex 数据里。

### 🧠 心态与工作流 (软技能)

> **💡 洞察:** Web3 目前正处于糟糕的**“U盾时代”**。这不仅是痛点，更是未来账户抽象 (Account Abstraction) 的巨大商业机会。

* ✅ **重构知识库**: 将笔记拆分为 `01_Blockchain_Basics` 和 `02_Web3_Wallet_Security`，并引入了标准化的 Git 提交规范。
* ✅ **情绪调节**: 在现实冲突 (Grab 外卖) 中克服了 **“杏仁核劫持”**。瞬间夺回理性控制权，没有被本能带着走。
* ✅ **逆风输出**: 顶着严重的网络延迟，硬啃下了 80% 的安全模块。

### ⛔ 致命阻碍 (The Blocker)

* **障碍**: 代理节点极度不稳定，视频卡顿导致严重的精力耗损。
* **代价**: 物理透支 (腰痛/脑涨)，被迫提前关机。
* **修复**: 明早第一件事：**修复网络基础设施**。

**Key Takeaway:** Web3 的安全不是自动的，是设计出来的。今天我学到：所谓的“不可阻挡”，意味着不依赖任何单点故障——无论是私钥，还是我自己的大脑。

---

**理论** ✅ | **实战** 🔄 | **踩坑** 🛑

明天：修好网络，杀完安全课，开始写代码。 👊
*Section 5 (Scalability) In Progress. Next: Transaction Verification.*

# Day 5: The "U-Key" Era & The Art of Self-Custody 🛡️

Today's mission was building the "mental firewall." Despite a forced shutdown due to physical exhaustion and network failures, the conceptual density was high. I am no longer just a user; I am learning to be the bank.

### 🔐 The Security Protocol (Hard Skills)

1.  **Custody Truths:** Mastered the distinction between **EOA** (MetaMask = My Vault) and **CEX** (Kraken = The Bank's IOU). "Not your keys, not your coins."
2.  **Multi-Sig Logic:** Understood the **"X-of-Y"** signature scheme. It’s like a corporate board—money doesn't move unless the majority agrees.
3.  **Social Recovery:** Learned **Shamir's Secret Sharing (SSS)**. The "Torn Treasure Map" algorithm that splits a private key into shards.
4.  **Defense Mode:** "Don't trust the frontend, only trust the signer window." Honeypots and phishing attacks live on the website; the truth lives in the hex data.

### 🧠 Mindset & Workflow (Soft Skills)

> **Insight:** Web3 is currently in its "U-Key Era" (Terrible UX). This isn't a bug; it's a massive business opportunity for future Account Abstraction.

* ✅ **Refactored Knowledge Base:** Split notes into `01_Blockchain_Basics` and `02_Web3_Wallet_Security` with standardized Git commits.
* ✅ **Emotional Regulation:** Overcame an "Amygdala Hijack" during a real-world conflict (Grab delivery). Instantly regained rational control.
* ✅ **Workflow:** Pushed through 80% of the security module despite severe network resistance.

### ⛔ The Blocker (Network Failure)

* **Obstacle:** Unstable proxy nodes caused severe video buffering and mental fatigue.
* **Cost:** Physical exhaustion (back pain/headache) forced an early shutdown.
* **Fix:** Infrastructure repair is the priority for tomorrow morning.

**Key Takeaway:** Security in Web3 is not automatic; it is engineered. Today I learned that being "Unstoppable" means building a system that doesn't rely on a single point of failure—whether that's a private key or my own brain.

---

**Theory** ✅ | **Practice** 🔄 | **Pitfalls** 🛑

Tomorrow: Fix the network, finish the security module, and start coding. 👊
*Section 5 (Scalability) In Progress. Next: Transaction Verification.*


# 📅 2025-12-23 Day 6: 理论的终结与构建的开始 (Theory to Code)

**Summary**: 历时 6 天，终于啃完了 *Blockchain Basics*。虽然最后几章关于 L2 和 ZK 的内容有些“囫囵吞枣”，但我学会了**带着问题前行 (Iterative Learning)**。下午正式切入 Solidity 开发，从抽象的概念回到了我熟悉的 IDE 和代码逻辑，掌控感迅速回归。

### 🧱 硬技能 (Hard Skills)

1.  **理论通关 (Basics Completed)**:
    * 以 **29/30** 的高分通过了基础考试。
    * 完成了 L1 (Sepolia) 到 L2 (Arbitrum/Optimism) 的跨链操作。虽然过程跌跌撞撞，但跑通了流程。
2.  **调试直觉 (Debug Reflex)**:
    * 在检查交易哈希时遇到 URL 错误（404/Not Found）。
    * **进步点**: 以前可能会慌乱或盲目重试，这次在 **3秒内** 意识到是 Explorer URL 选错了网络，迅速修正。这种“下意识的排查”是工程师的肌肉记忆。
3.  **Solidity 破冰 (First Contract)**:
    * 环境搭建：Remix IDE 配置与净化。
    * 语法入门：掌握了 `uint256`, `bytes32` (vs string), `address`, `bool` 等强类型规则。
    * **部署实战**: 成功部署 `SimpleStorage` 并理解了 `public` 关键字对于生成 Getter 函数的必要性。

### 🧠 心态与工作流 (Soft Skills)

* **💡 洞察**: **带着问题前行**。最后几章的理论密度极高（共识机制、Rollups），我意识到不需要现在弄懂 100% 的细节。Web3 的知识是螺旋上升的，先写代码，以后遇到问题再回过头来补理论，这才是高效的学习路径。
* **✅ 掌控感回归**: 进入 Solidity 环节后，作为程序员的自信回来了。代码不会骗人，红就是红，绿就是绿，比晦涩的分布式理论让人安心。

### ⛔ 致命阻碍 & 改进 (The Blocker)

* **网络幽灵**: 依然存在偶发的连接中断，虽然已适应，但仍是心流杀手。

**Key Takeaway**: 理论只是地图，代码才是脚下的路。虽然地图还没完全看懂，但我已经出发了。

---

**Day 6: Breaking the Theory Barrier & First Lines of Solidity 🏗️**

**Summary**: After 6 days of grinding, I’ve officially completed the *Blockchain Basics* module. The final chapters on L2s and ZK were dense, but I learned to **embrace ambiguity**—moving forward without needing to understand 100% of the theory upfront. Transitioning into Solidity brought back my developer confidence.

### 🧱 Hard Skills

1.  **Milestone Unlocked**: Passed the Blockchain Basics exam with a **29/30** score and executed my first L1 -> L2 bridge transaction.
2.  **Debug Reflex**: Encountered a transaction lookup error (wrong URL). Instead of panicking, I identified the network mismatch in **3 seconds**. My troubleshooting intuition is sharpening.
3.  **Solidity Hello World**:
    * Configured Remix IDE.
    * Mastered basic types: `uint256`, `bytes32` (gas efficiency), and `address`.
    * Deployed `SimpleStorage` and learned why `public` visibility is crucial for interaction.

### 🧠 Mindset

* **Iterative Learning**: The concepts of Rollups and Consensus were overwhelming at the end. I realized it's okay not to master everything instantly. I'm choosing to build first and fill in the theoretical gaps later.
* **Confidence Boost**: Coding feels like home. Unlike abstract theory, the compiler is brutally honest but logical.

### ⛔ Lessons Learned

**Key Takeaway**: Theory is the map, but code is the journey. I haven't memorized the whole map yet, but I've started walking.

---
