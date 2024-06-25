void main(List<String> args) {

  ///Comentário para documentação
  //comentário comum

  int idade  = 24;
  double altura = 1.73;
  double representacao_exponencial = 5e6;
  bool programador = (idade == altura);
  String nome = 'Gustavo';

  print('Meu nome é $nome \n'
        'Eu adoraria ser programador? $programador \n'
        'Eu tenho $idade de idade e $altura de altura \n'
        'Representação exponencial: $representacao_exponencial');


  // type casting in dart

  String valor_string = '10';
  int valor_string_int = int.parse(valor_string);
  double valor_string_double = double.parse('3.14316');

  print('$valor_string convertido em inteiro: $valor_string_int \n'
        'conversão de double: $valor_string_double \n'
        'toString formatado: ${valor_string_double.toStringAsFixed(2)}');

  // listas

  List<String> primeira_lista = [];
  primeira_lista.add(nome);
  primeira_lista.add(valor_string);

  print(primeira_lista);
  print(primeira_lista.last);
  print(primeira_lista.every((data) => data.startsWith('G')));

  List<dynamic> lista_dinamica = [];
  lista_dinamica.add(valor_string);
  lista_dinamica.add(valor_string_int);
  lista_dinamica.add(valor_string_double);

  print(lista_dinamica);

  // const, var e final

  var variavel = 10;
  const String constante = 'essa é minha constante';
  final String constante_final;
  constante_final = 'primeiro valor'; // a diferença entre const e final, é que o final pode ser inicializado sem valor e, uma vez atribuido, vira const.

  // if else

  if (!primeira_lista.isEmpty) {
    print('a primeira lista está preenchida e não vazia');
  }

  // for

  for (int i = 0; i < 5; i++) {
    print('concluí ${i + 1} voltas');
  }

  // while e do while
  var contador = 10;
  while (contador > 0) {
    print('decrementando o contador de $contador para ${contador - 1}');
    contador--;
  }

  contador = 10;
  do {
    print('decrementando o contador de $contador para ${contador - 1}');
    contador--;
  } while (contador > 0);
}