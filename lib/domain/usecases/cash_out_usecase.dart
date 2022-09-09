import '../entities/account.dart';
import '../entities/transaction.dart';

abstract class CashOutUseCase {
  Future<Account> call(Account account, Transaction transaction);
}
