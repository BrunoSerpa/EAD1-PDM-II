import 'dart:io';

class ClassificadorTemperatura {
  Classificar() {
    double temperatura = _lerTemperatura();
    String estadoClima = _determinarEstadoClima(temperatura);
    print("A temperatura é de $temperaturaºC. O clima está $estadoClima.");
  }

  double _lerTemperatura() {
    for (;;) {
      stdout.write('Insira a temperatura atual: ');
      String? temperaturaDigitada = stdin.readLineSync();
      if (temperaturaDigitada == null || temperaturaDigitada.isEmpty) {
        print("Nenhuma temperatura foi digitada. Tente novamente.");
        continue;
      }
      double? temperatura = double.tryParse(temperaturaDigitada);
      if (temperatura == null) {
        print('Temperatura inválida. Tente novamente.');
        continue;
      }
      return temperatura;
    }
  }

  String _determinarEstadoClima(double temperatura) {
    if (temperatura < 0) {
      return "congelando";
    } else if (temperatura < 20) {
      return "frio";
    } else if (temperatura < 30) {
      return "agradável";
    } else {
      return "quente";
    }
  }
}

class AplicativoTemperatura {
  final ClassificadorTemperatura _classificador = ClassificadorTemperatura();

  void iniciar() {
    do {
      _classificador.Classificar();
    } while (_desejaContinuar());
    print("Até mais!");
  }

  bool _desejaContinuar() {
    stdout.write('Deseja rodar novamente? (s/n): ');
    String? resposta = stdin.readLineSync();
    return resposta?.toLowerCase() == 's';
  }
}

void main() {
  AplicativoTemperatura app = AplicativoTemperatura();
  app.iniciar();
}