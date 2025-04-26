import 'dart:io';

class GerenciadorSenha {
  String _senhaAtual;

  GerenciadorSenha() : _senhaAtual = _lerSenha();

  static String _lerSenha() {
    for (;;) {
      stdout.write('Insira a senha: ');
      String? senhaDigitada = stdin.readLineSync();
      if (senhaDigitada == null || senhaDigitada.isEmpty) {
        print("Nenhuma senha foi digitada. Tente Novamente.");
        continue;
      }
      return senhaDigitada;
    }
  }

  void trocar() {
    _senhaAtual = _lerSenha();
  }

  int tentarInserirSenha() {
    int tentativas = 0;
    for (;;) {
      tentativas++;
      String senhaDigitada = _lerSenha();
      if (senhaDigitada != _senhaAtual) {
        print("Senha incorreta. Tente novamente.");
        continue;
      }
      print("Você inseriu a senha correta!");
      break;
    }
    return tentativas;
  }
}

class AplicativoSenha {
  final GerenciadorSenha _gerenciador = GerenciadorSenha();

  void iniciar() {
    for (;;) {
      _mostrarMenu();
      String? opcao = stdin.readLineSync();
      switch (opcao) {
        case "1":
          _gerenciador.trocar();
          break;
        case "2":
          int tentativas = _gerenciador.tentarInserirSenha();
          print(
              "Foram efetuada${tentativas > 1 ? 's' : ''} $tentativas tentativa${tentativas > 1 ? 's' : ''}.");
          break;
        case "0":
          print("Até mais!");
          return;
        default:
          print("Opção inválida. Tente novamente.");
      }
    }
  }

  void _mostrarMenu() {
    print("=======================");
    print("Opções:");
    print('1 - Trocar senha atual;');
    print('2 - Inserir senha;');
    print('0 - Sair;');
    print("=======================");
    stdout.write('Escolha uma opção: ');
  }
}

void main() {
  AplicativoSenha app = AplicativoSenha();
  app.iniciar();
}