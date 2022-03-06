# Cosmic Horizon - Darkmatter-1 Testnet Planning

## Disclaimer
- Everything is subject to change. Pay attention to the discord [validator announcement channel](https://discord.gg/MmaEC8RU3b) for announcements. We are testing complex, opensource beta software. Expect things to break. If the documentation is inadequate, make a PR. 
## Overview
- 3 Phases (min)
- 2 governance proposals
    -   Enable Transfers
    -   Enable IBC
- Rewards: 1500+ points possible per participant with a total of 100,000 CoHo tokens available for winners. 
- Schedule: Feb 8th - Mar 8th
- For the Genesis and Celebrate sections please sign a transaction for each of the tasks and provide the txHash in a PR.

## Phase - 1: Genesis - max 150 points
- GenTx Validator Address Submission : Feb 3, 2022 1600 UTC. Up to 200 adresses will be accepted. 50 Points for successfull wallet submissions
- Network start time: Feb 8th, 2021 1600 UTC - 50 points for everyone who brings up their nodes within first 50 blocks (votes).
- Provide peer - 50 points for everyone who provides a peer
    - Instructions to submit the PR:
        - Clone cosmic-horizon/testnets repo,
        ```sh
        $ git clone https://github.com/cosmic-horizon/testnets
        $ cd testnets
        $ git pull origin main
        $ cd darkmatter-1/tasks/Phase-1/genesis
        $ cp sample.json <your_moniker>.json
        ```
        - Add/Update the details - provide txhash of peerID in a transaction memo
        - Push to the repo and create a PR

### Parameter Update-1: Transfers
Lead validator team will create a governance proposal on 10th Feb, 2021 at ~1500 UTC, to update the transfer parameter.

__New to upgrades?__ Read [this](https://docs.cosmos.network/master/modules/gov)

**Update Schedule:**
- Proposal: Feb 10th, 2021 ~1600 UTC
- Voting Period: Feb 10th - Feb 12th, ~1600 UTC
- Upgrade Height: `TBD`
    - First 10 teams to vote on the update will get 100 points each.
    - Next 20 teams will get 60 points each.
    - Next 20 teams will get 40 points each.
    - Other teams who voted will share 20 points each.
    - Note: Teams are eligible for this reward **only if they vote on the proposal.**

**What should validators do?**
- Review the parameter change proposal and cast your vote before voting period endtime. 

### Celebrate Darkmatter-1: - 150 points
- Send 1COHO to others - 10 points
- Delegate some COHO to others - 10 points
- Tweet url linked in a memo (Come up with something cool to say about Cosmic Horizons Darkmatter-1 Testnet) - 30 points
- LinkedIn post url linked in a memo (Come up with something cool to say about Cosmic Horizons Darkmatter-1 Testnet) - 30 points
- Memo with your discord handle - 10 points
- Participants need to raise a PR with the details onto cosmic-horizon/testnets repo - 50 points
    - Time: Feb 18th, 1600UTC - Feb 20th, 1600 UTC (Only the txs in this time period are considered to be valid)
    - Instructions to submit the PR:
        - Clone cosmic-horizon/testnets repo,
        ```sh
        $ git clone https://github.com/cosmic-horizon/testnets
        $ cd testnets
        $ git pull origin main
        $ cd darkmatter-1/tasks/Phase-1/celebrate
        $ cp sample.json <your_moniker>.json
        ```
        - Add/Update the details
        - Push to the repo and create a PR

### Network security and performance testing - up to 100 points:
- Make transactions for continuous 3 hours from 1500UTC to 1800UTC 20 Feb, 2021.
- Validators can use multiple addresses to send the transactions. It can be any transaction, even failed transactions would count. All the transactions a validator performs, should include the validator `moniker` as a memo so that we can map the transactions to your validator. 
- Top 10 teams will get 100 points each
- Next 10 (11 to 20) will get 60 points each
- 21 to 50 teams will get 50 points each
**NOTE:** Please check bonus section below for appropriate bonuses.

## Phase 2 - IBC Test
- Upgrade proposal to enable IBC transfers - 22nd Feb, 1600 UTC
- Voting Period: 22-02-2022 1600 to 24-02-2021 - 25 points
- Test IBC Transfers of `ucoho` token - max 200 points
    - Schedule 1-3 Mar, 1600 UTC (IBC transactions should be made in this time period)
    - Make a PR with ibc-path info (see [tasks/phase-2/4-ibc/sample.json](https://github.com/cosmic-horizon/testnets/blob/main/darkmatter-1/tasks/Phase-2/sample.json) for reference). Last date for submitting PRs is : 3 Mar, 1600 UTC
    - Please find more detailed instructions [here](https://mzonder.notion.site/Celestia-Coho-IBC-transfers-devnet-2-darkmatter-1-45028fa5297741b0b97d9954368a38b1)
- Run a custom ibc-enabled chain and transfer tokens back and forth - 200 points [5 Mar - 7 Mar, 1600UTC]
    - Make a PR with ibc-path info (see [tasks/phase-2/5-custom-ibc/sample.json](https://github.com/cosmic-horizon/testnets/tree/main/darkmatter-1/tasks/Phase-2/custom-ibc) for reference). Last date for submitting PRs is : 10 Mar, 1600 UTC
    - Detailed information on how to setup custom testnet chain [can be found here](https://yep1.notion.site/Setting-up-a-custom-testnet-chain-a23be97ff4884565a2bec35ddea7113b)

## Phase 3 TBD
## Bonus Challenges
- Uptime - 4000points
    - 2000 points will be distributed among validators who never miss _signing_ a block (max 200 points per validator)
    - uptime >= 99% 1000 points will be distributed equally among all the eligible validators  (max 100 points per validator)
    - 99% <= uptime >= 98% 1000 points  (max 60 points per validator)
- Never jailed validators - 2000 points
- Max txs in a block (min 5000txs/block) - 100 points
    - If multiple blocks has same number of txs, only the txs from single or list of accounts owned/organized by the validator will be counted. Txs from others in the block will not be considered. (Phase 3 only)
- Max msgs in a transaction - 100 points
    - If multiple blocks has same number of messages in a tx, first 2 teams will share the reward (50 points each)
- P2P/Mempool attacks - Bringing 60% nodes down (Should publish a blogpost with details and possible proofs) - 300 points
- Community reward
    - Top - 10 teams/individuals will receive 50points each for their contributions for the community. technical docs, helping/resolving community issues, etc.

## NOTE:
Cosmic Horizon Network is committed to building a strong community. We would like to extend our thanks to our early adapters & supporters and they are given priority over new participants wherever there's a tie. Here are a possible cases (but not limited to) where we extend our support and prioritize early community members (our partners, core validators and investors)
- Allocate 10% extra tokens on genesis (gentxs)
- Ranking boost (whenever there's a tie)

For the avoidance of doubt, a _missed_ block, is a block for which the validator's signature is omitted from the finalised block, regardless of reason. Logs from a validator showing a signature was broadcast does not constitute inclusion of the signature in the finalised block.

## Code Of Conduct

- Testnet tokens are limited and valuable assets for the testnet. It is restricted/not allowed to receive external delegations. One should not try to increase their voting power by spamming the faucet. But it is encouraged to increase their stake by re-staking their rewards.  There are no incentives related to the number of tokens you attain.  The faucet should be used as a utility.  
- We expect formal and professional behaviour from the participants and encourage a healthy competition, as well as healthy cooperation. Any misbehaviour will potentially disqualify one from the contest. This includes trolling channels, and being dismissive or rude to teammembers or other testnet participants.  
- Participating as a group or running validators from multiple accounts should be strictly avoided and any hint on such activities would disqualify users staraight away. Everyone involved would get ZERO rewards. We are not running this testnet to uncover cartel behavior, there are testnets where that is perfectly acceptable and encouraged, find those testnets. This testnet is explicitly to test Cosmic Horizon functionality and performance and create an opportunity for helping to secure and govern our network.  This is not an adversarial testnet in which the basic assumptions of PoS systems are being tested. Don't encourage your friends to spin up nodes just for the rewards sake.
- If a user is flagged or blocked on Discord/Github/Twitter will be considered ineligible. 
- Same account/name should be used throughout the testnet. It's not allowed to raise PRs from different github accounts.
