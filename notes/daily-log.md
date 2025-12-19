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