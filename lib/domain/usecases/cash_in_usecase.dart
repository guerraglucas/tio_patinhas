import '../entities/account.dart';
import '../entities/transaction.dart';

abstract class CashInUseCase {
  Future<Account> call(Account account, Transaction transaction);
}
