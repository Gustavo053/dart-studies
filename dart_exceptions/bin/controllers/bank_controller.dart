import '../models/account.dart';
import '../exceptions/bkank_controller_exception.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {
    // Verificar se ID de remetente é válido
    if (!verifyId(idSender)) {
      throw SenderIDInvalidException(idSender: idSender);
    }

    // Verificar se ID de destinatário é válido
    if (!verifyId(idReceiver)) {
      throw ReceiverIDInvalidException(idReceiver: idReceiver);
    }

    Account accountSender = _database[idSender]!;
    Account accountReceiver = _database[idReceiver]!;

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      throw SenderNotAuthenticatedException(senderName: accountSender.name);
    }

    // Verificar se o remetente possui saldo suficiente
    if (accountSender.balance < amount) {
      throw SenderAccountBalanceLowestThanAmountException(nameSender: accountSender.name, balanceAccount: accountSender.balance, balanceTransfer: amount);
    }

    // Se tudo estiver certo, efetivar transação
    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
