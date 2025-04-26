import 'dart:io';

class Palavra {
  int vogais;
  int letras;

  Palavra({
    required this.vogais,
    required this.letras,
  });
}

Palavra contarLetras() {
  String? palavraDigitada = null;
  while (palavraDigitada == null) {
    stdout.write('Insira uma palavra: ');
    palavraDigitada = stdin.readLineSync();
    if (palavraDigitada == null || palavraDigitada.isEmpty) {
      print("Nenhuma palavra foi digitada! Tente Novamente.");
      continue;
    }
  }

  List<String> vogais = ["a", "e", "i", "o", "u"];
  int quantVogais = 0;
  int quantLetras = 0;

  for (int i = 0; i < palavraDigitada.length; i++) {
    String letra = palavraDigitada[i];

    if (vogais.contains(letra.toLowerCase())) {
      quantVogais++;
    }

    if (!letra.contains(RegExp(r'[0-1]'))) {
      quantLetras++;
    }
  }

  return Palavra(vogais: quantVogais, letras: quantLetras);
}

void main() {
  while (true) {
    Palavra palavra = contarLetras();
    String letras = "${palavra.letras} letras";
    if (palavra.letras == 1) {
      letras = "${palavra.letras} letra";
    }
    String vogais = "${palavra.vogais} vogais";
    if (palavra.vogais == 1) {
      vogais = "${palavra.vogais} vogal";
    }
    print("Esta palavra possui $letras e $vogais!");
    print('Insira 1 para rodar novamente.');
    String? resp = stdin.readLineSync();
    if (resp == "1") {
      continue;
    }
    break;
  }
  print("Até mais!");
}