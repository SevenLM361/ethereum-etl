SELECT
  blocks.block_number,
  blocks.block_hash,
  blocks.block_parent_hash,
  blocks.block_nonce,
  blocks.block_sha3_uncles,
  blocks.block_logs_bloom,
  blocks.block_transactions_root,
  blocks.block_state_root,
  blocks.block_miner,
  blocks.block_difficulty,
  blocks.block_total_difficulty,
  blocks.block_size,
  blocks.block_extra_data,
  blocks.block_gas_limit,
  blocks.block_gas_used,
  blocks.block_timestamp,
  blocks.block_transaction_count,
  transactions.tx_hash,
  transactions.tx_nonce,
  transactions.tx_index,
  transactions.tx_from,
  transactions.tx_to,
  transactions.tx_value,
  transactions.tx_gas,
  transactions.tx_gas_price,
  transactions.tx_input,
  receipts.receipt_cumulative_gas_used,
  receipts.receipt_gas_used,
  receipts.receipt_contract_address,
  receipts.receipt_root,
  receipts.receipt_status
FROM `ethereumetl.ethereum.blocks` AS blocks
  JOIN `ethereumetl.ethereum.transactions` AS transactions ON blocks.block_number = transactions.tx_block_number
  JOIN `ethereumetl.ethereum.receipts` AS receipts ON transactions.tx_hash = receipts.receipt_transaction_hash