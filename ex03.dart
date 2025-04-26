import 'dart:io';

class Palavra {
  final String texto;
  int quantidadeVogais = 0;
  int quantidadeLetras = 0;

  Palavra(this.texto) {
    _contarCaracteres();
  }

  void _contarCaracteres() {
    List<String> vogais = ["a", "e", "i", "o", "u"];
    quantidadeVogais = 0;
    quantidadeLetras = 0;

    for (var letra in texto.split('')) {
      if (vogais.contains(letra.toLowerCase())) {
        quantidadeVogais++;
      }
      if (letra.contains(RegExp(r'[a-zA-Z]'))) {
        quantidadeLetras++;
      }
    }
  }

  String resumo() {
    String letrasTexto =
        "$quantidadeLetras letra${quantidadeLetras == 1 ? '' : 's'}";
    String vogaisTexto =
        "$quantidadeVogais vogal${quantidadeVogais == 1 ? '' : 's'}";
    return 'A palavra "$texto" possui $letrasTexto e $vogaisTexto!';
  }
}

class AplicativoPalavra {
  void iniciar() {
    do {
      Palavra palavra = _lerPalavra();
      print(palavra.resumo());
    } while (_desejaContinuar());
    print("Até mais!");
  }

  Palavra _lerPalavra() {
    for (;;) {
      stdout.write('Insira uma palavra: ');
      String? palavraDigitada = stdin.readLineSync();
      if (palavraDigitada == null || palavraDigitada.trim().isEmpty) {
        print("Nenhuma palavra foi digitada. Tente novamente.");
        continue;
      }
      return Palavra(palavraDigitada.trim());
    }
  }

  bool _desejaContinuar() {
    stdout.write('Deseja rodar novamente? (s/n): ');
    String? resposta = stdin.readLineSync();
    return resposta?.toLowerCase() == 's';
  }
}

void main() {
  AplicativoPalavra app = AplicativoPalavra();
  app.iniciar();
}
