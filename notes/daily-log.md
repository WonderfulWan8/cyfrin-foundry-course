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
