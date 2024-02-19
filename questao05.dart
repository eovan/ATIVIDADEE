//importando a biblioteca de entrada e saída
import 'dart:io';

void main() {
  List<int> vetor = [];
  vetor.sort();
  // Lê 15 valores e evita que valores repetidos sejam adicionados ao vetor
  for (int i = 0; i < 15; i++) {
    print('Digite o valor ${i + 1}:');
    int valor = int.parse(stdin.readLineSync()!);

    while (vetor.contains(valor)) {
      print('Valor existente, digite outro valor:');
      valor = int.parse(stdin.readLineSync()!);
    }

    vetor.add(valor);
  }

  print('Digite um valor para verificar se está na lista:');
  int valorBusca = int.parse(stdin.readLineSync()!);

  // Verifica se o valor está na lista e se é par ou ímpar
  if (vetor.contains(valorBusca)) {
    int index = vetor.indexOf(valorBusca);
    if (index.isEven) {
      print("O valor existente na lista e é par");
      stdout.write("Posição de número: ");
      print(index);
    } else {
      print("O valor existente na lista e é ímpar");
      stdout.write("Posição de número: ");
      print(index);
    }
  } else {
    print("O valor não está na lista");
  }

  //Busca binária
  // Realiza a busca binária para verificar se o valor está na lista
  int indice = buscaBinaria(vetor, valorBusca);

  // Se o valor estiver na lista, verifica se o índice é par ou ímpar
  if (indice != -1) {
    if (indice.isEven) {
      print("O valor está na lista e o índice é par");
    } else {
      print("O valor está na lista e o índice é ímpar");
    }
  } else {
    print("O valor não está na lista");
  }
}

// Implementação da busca binária
int buscaBinaria(List<int> vetor, int valor) {
  int inicio = 0;
  int fim = vetor.length - 1;

  while (inicio <= fim) {
    int meio = (inicio + fim) ~/ 2;

    if (vetor[meio] == valor) {
      return meio; // Retorna o índice do valor encontrado
    } else if (vetor[meio] < valor) {
      inicio = meio + 1; // Descarta a metade inferior
    } else {
      fim = meio - 1; // Descarta a metade superior
    }
  }

  return -1; // Retorna -1 se o valor não for encontrado
}
