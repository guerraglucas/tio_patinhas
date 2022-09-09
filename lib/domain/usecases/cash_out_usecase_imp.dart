import 'package:tio_patinhas/domain/entities/transaction.dart';

import 'package:tio_patinhas/domain/entities/account.dart';
import 'package:tio_patinhas/domain/repositories/account_repository.dart';

import 'cash_out_usecase.dart';

class CashOutUseCaseImp implements CashOutUseCase {
  final AccountRepository _accountRepository;

  CashOutUseCaseImp(this._accountRepository);
  @override
  Future<Account> call(Account account, Transaction transaction) async {
    return await _accountRepository.withdraw(account, transaction);
  }
}
