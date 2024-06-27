void startStackTest() {
  print('Started main');

  try {
    function01();
  } on Exception {
    print('Ocorreu um erro na function01');
  }

  print('Finished main');
}

void function01() {
  print('Started function01');

  try {
    function02();
  } on FormatException catch(exception, stacktrace) {
    print('Ocorreu um erro na function02');
    print('detalhes do erro: ${exception.toString()}');
    print('Informações do stacktrace: ${stacktrace.toString()}');
    rethrow;
  }

  print('Finished function01');
}

void function02() {
  print('Started function02');

  for (int i = 1; i <= 5; i++) {
    print(i);
    double valor = double.parse("30,5");
  }

  print('Finished function02');
}