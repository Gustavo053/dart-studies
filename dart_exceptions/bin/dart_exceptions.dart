import 'dart:math';

import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'exceptions/bkank_controller_exception.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(id: "Ricarth", account: Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(id: "Kako", account: Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  try {
    // Fazendo transferência
    bool result = bankController.makeTransfer(idSender: "Kako", idReceiver: "Ricarth", amount: 700);
    if (result) {
      print('Transação realizada com sucesso');
    }
  } on SenderIDInvalidException catch(e) {
    print(e);
    print('O remetente de ID ${e.idSender} não existe');
  } on ReceiverIDInvalidException catch(e) {
    print(e);
    print('O destinatário de ID ${e.idReceiver} não existe');
  } on SenderNotAuthenticatedException catch(e) {
    print(e);
    print('O remetente ${e.senderName} não está autenticado');
  } on SenderAccountBalanceLowestThanAmountException catch(e) {
    print(e);
    print('${e.nameSender} tentou fazer uma transferência de ${e.balanceTransfer}, mas o saldo da conta é ${e.balanceAccount}');
  } on Exception {
    print('Algo deu errado na transação');
  }
}
