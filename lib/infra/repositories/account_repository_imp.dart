import 'package:tio_patinhas/domain/entities/transaction.dart';

import 'package:tio_patinhas/domain/entities/account.dart';

import '../../domain/repositories/account_repository.dart';

class AccountRepositoryImp implements AccountRepository {
  @override
  Future<Account> deposit(Account account, Transaction transaction) async {
    await account.setBalanceAfterTransaction(transaction);
    return account;
  }

  @override
  Future<double> getBalance(Account account) async {
    return account.accountBalance;
  }

  @override
  Future<Account> withdraw(Account account, Transaction transaction) async {
    await account.setBalanceAfterTransaction(transaction);
    return account;
  }
}
