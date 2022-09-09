import 'package:tio_patinhas/domain/entities/transaction.dart';

import 'package:tio_patinhas/domain/entities/account.dart';
import 'package:tio_patinhas/domain/repositories/account_repository.dart';

import 'cash_in_usecase.dart';

class CashInUseCaseImp implements CashInUseCase {
  CashInUseCaseImp(this._accountRepository);

  final AccountRepository _accountRepository;

  @override
  Future<Account> call(Account account, Transaction transaction) async {
    return await _accountRepository.deposit(account, transaction);
  }
}
