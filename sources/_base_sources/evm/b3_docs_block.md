{% docs b3_transactions_doc %}

The `b3.transactions` table contains detailed information about transactions on the b3 blockchain. It includes:

- Block information: number, timestamp, hash
- Transaction details: hash, from_address, to_address, value
- Gas data: gas_price, gas_limit, gas_used
- Status: success or failure
- Input data for contract interactions
- Nonce
- Transaction type

This table is used for analyzing transaction patterns, gas usage, value transfers, and overall network activity on b3.

{% enddocs %}

{% docs b3_traces_doc %}

The `b3.traces` table contains records of execution steps for transactions on the b3 blockchain. Each trace represents an atomic operation that modifies the state of the Ethereum Virtual Machine (EVM). Key components include:

- Transaction hash
- Block number and timestamp
- From and to addresses
- Value transferred
- Input data
- Gas used
- Error information (if applicable)

This table is used for analyzing transaction execution paths, internal contract calls, and state changes within the b3 network.

{% enddocs %}

{% docs b3_traces_decoded_doc %}

The `b3.traces_decoded` table contains a subset of decoded traces from the b3 blockchain dependent on submitted smart contracts and their ABIs. It includes:

- All fields from the `b3.traces` table
- Decoded function names and signature (first four bytes of the calldata)
- the contract name and schema name we have decoded the function call to

This table is used for high level analysis of smart contract interactions. For fully decoded function calls and parameters, refer to decoded tables such as `uniswap_v3_b3.UniswapV3Pool_call_Swap`. 

{% enddocs %}

{% docs b3_logs_doc %}

The `b3.logs` table contains event logs emitted by smart contracts on the b3 blockchain. It includes:

- Block number and timestamp
- Transaction hash
- Contract address
- Topic hashes
- Raw data

This table is used for tracking contract events and state changes on the b3 network.

{% enddocs %}

{% docs b3_logs_decoded_doc %}

The `b3.logs_decoded` table contains a subset of decoded logs from the b3 blockchain dependent on submitted smart contracts and their ABIs. It includes:

- All fields from the `b3.logs` table
- Decoded event names and signature (topic0 of the log)
- the contract name and schema name we have decoded the event to

This table is used for high level analysis of smart contract events. For fully decoded events and parameters, refer to decoded tables such as `erc20_b3.UniswapV3Pool_evt_Swap`.

{% enddocs %}

{% docs b3_blocks_doc %}

The `b3.blocks` table contains information about b3 blocks. It provides essential data about each block in the b3 blockchain, including timestamps, gas metrics, and block identifiers. This table is fundamental for analyzing blockchain structure, block production rates, and overall network performance.

{% enddocs %}

{% docs b3_contracts_doc %}

The `b3.contracts` table tracks all contracts that have been submitted to Dune for decoding. It includes:

- metadata about the contract, including its name and namespace
- the contract address

{% enddocs %}

{% docs b3_creation_traces_doc %}

The `b3.creation_traces` table contains data about contract creation events on the b3 blockchain. It includes:

- Block number and timestamp
- Transaction hash
- Creator's address
- Created contract address
- deployed contract bytecode
- Gas used for deployment

This table is used for analyzing contract deployment patterns and tracking the origin of smart contracts on the b3 network. It's essentially a filtered version of the `b3.traces` table for the condition that `type = create`.

{% enddocs %}

{% docs erc20_b3_evt_transfer_doc %}

The `erc20_b3.evt_transfer` table contains Transfer events for ERC20 tokens on the b3 blockchain. It includes:

- Block number and timestamp
- Transaction hash
- Contract address
- From and to addresses
- Amount transferred

This table is used for tracking ERC20 token movements on the b3 network.

Please be aware that this table is the raw ERC20 event data, and does not include any additional metadata, context or is in any way filtered or curated. Use `tokens.transfers` for a more complete and curated view of token transfers.

{% enddocs %}

{% docs erc20_b3_evt_approval_doc %}

The `erc20_b3.evt_approval` table contains Approval events for ERC20 tokens on the b3 blockchain. It includes:

- Block number and timestamp
- Transaction hash
- Contract address
- Owner and spender addresses
- Approved amount

This table is used for analyzing ERC20 token approvals and spending permissions on the b3 network.

{% enddocs %}
