class SenderIDInvalidException implements Exception {
  String idSender;
  SenderIDInvalidException({required this.idSender});

  @override
  String toString() {
    return 'SenderIDInvalidException\nidSender:$idSender';
  }
}
class ReceiverIDInvalidException implements Exception {
  String idReceiver;
  ReceiverIDInvalidException({required this.idReceiver});

  @override
  String toString() {
    return 'ReceiverIDInvalidException\nidReceiver:$idReceiver';
  }
}

class SenderNotAuthenticatedException implements Exception {
  String senderName;
  SenderNotAuthenticatedException({required this.senderName});

  @override
  String toString() {
    return 'SenderNotAuthenticatedException\nsenderName:$senderName';
  }
}

class SenderAccountBalanceLowestThanAmountException implements Exception {
  String nameSender;
  double balanceAccount;
  double balanceTransfer;

  SenderAccountBalanceLowestThanAmountException({required this.nameSender, required this.balanceAccount, required this.balanceTransfer});

  @override
  String toString() {
    return 'SenderAccountBalanceLowestThanAmountException\nbalanceAccount:$balanceAccount\nbalanceTransfer:$balanceTransfer';
  }
}

class InvalidIDException implements Exception {
  String idProvided;

  InvalidIDException({required this.idProvided});

  @override
  String toString() {
    return 'Invalid provided ID: $idProvided';
  }
}