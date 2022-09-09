import '../entities/account.dart';

abstract class GetBalanceUseCase {
  Future<double> call(Account account);
}
