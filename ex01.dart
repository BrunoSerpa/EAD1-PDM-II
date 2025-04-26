import 'dart:io';

void classificarTemperatura() {
  while (true) {
    stdout.write('Insira a temperatura atual: ');
    String? tempDigitada = stdin.readLineSync();
    if (tempDigitada == null || tempDigitada.isEmpty) {
      print("Nenhuma temperatura foi digitada! Tente Novamente.");
      continue;
    }
    double? temp = double.tryParse(tempDigitada);
    if (temp == null) {
      print('Temperatura inválida! Tente novamente.');
      continue;
    }
    String estadoClima = "";
    if (temp < 0) {
      estadoClima = "Congelando";
    } else if (temp < 20) {
      estadoClima = "Frio";
    } else if (temp < 30) {
      estadoClima = "Agradável";
    } else {
      estadoClima = "Quente";
    }
    print("A temperatura é de $tempºC, o clima está $estadoClima!");
    break;
  }
}

void main() {
  while (true){
    classificarTemperatura();
    print('Insira 1 para rodar novamente.');
    String? resp = stdin.readLineSync();
    if (resp == "1"){
      continue;
    }
    break;
  }
  print("Até mais!");
}