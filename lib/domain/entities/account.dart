import 'transaction.dart';

class Account {
  Account({this.accountBalance = 0, this.lastMonthBalance});

  double accountBalance;
  final double? lastMonthBalance;

  void setBalanceAfterTransaction(Transaction transaction) {
    switch (transaction.transactionType) {
      case TransactionType.income:
        accountBalance += transaction.amount;
        break;
      case TransactionType.outcome:
        accountBalance -= transaction.amount;
        break;
    }
  }
}
