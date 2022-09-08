class Transaction {
  Transaction({required this.amount, required this.transactionType});
  final double amount;
  final TransactionType transactionType;
}

enum TransactionType {
  income,
  outcome,
}
