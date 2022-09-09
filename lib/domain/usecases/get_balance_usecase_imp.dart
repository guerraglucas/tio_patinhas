import 'package:tio_patinhas/domain/repositories/account_repository.dart';

import '../entities/account.dart';
import 'get_balance_usecase.dart';

class GetBalanceUseCaseImp implements GetBalanceUseCase {
  final AccountRepository _accountRepository;

  GetBalanceUseCaseImp(this._accountRepository);
  @override
  Future<double> call(Account account) async {
    return await _accountRepository.getBalance(account);
  }
}
