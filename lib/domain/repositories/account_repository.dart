import '../entities/account.dart';
import '../entities/transaction.dart';

abstract class AccountRepository {
  Future<double> getBalance(Account account);
  Future<Account> deposit(Account account, Transaction transaction);
  Future<Account> withdraw(Account account, Transaction transaction);
}
