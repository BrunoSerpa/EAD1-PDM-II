import 'dart:io';

int inserirSenha(String senhaAtual) {
  int count = 0;
  while (true) {
    count++;
    stdout.write('Insira a senha: ');
    String? senhaDigitada = stdin.readLineSync();
    if (senhaDigitada == null || senhaDigitada.isEmpty) {
      print("Nenhuma senha foi digitada! Tente Novamente.");
    } else if (senhaDigitada != senhaAtual) {
      print("Senha incorreta! Tente Novamente.");
    } else {
      print("Você inseriu a senha correta!");
      break;
    }
  }
  return count;
}

String definirSenha() {
  while (true) {
    stdout.write('Insira a nova senha: ');
    String? senhaDigitada = stdin.readLineSync();
    if (senhaDigitada == null || senhaDigitada.isEmpty) {
      print("Nenhuma senha foi digitada! Tente Novamente.");
      continue;
    }
    return senhaDigitada;
  }
}

void main() {
  String senhaAtual = definirSenha();
  while (true) {
    print("=======================");
    print("Opções:");
    print('1 - Trocar senha atual;');
    print('2 - Inserir senha;');
    print('0 - Sair;');
    print("=======================");
    stdout.write('Insira o número de uma das opções acima: ');
    String? resp = stdin.readLineSync();
    if (resp == "1") {
      senhaAtual = definirSenha();
    } else if (resp == "2") {
      int tentativas = inserirSenha(senhaAtual);
      if (tentativas == 1) {
        print("Foram efetuadas $tentativas tentativa.");
      } else {
        print("Foram efetuadas $tentativas tentativas.");
      }
    } else if (resp == "0") {
      break;
    } else {
      print("Insira uma das opções!");
    }
  }
  print("Até mais!");
}
