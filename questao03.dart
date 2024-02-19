//Importar biblioteca de entrada e saída
import 'dart:io';

class Produto {
  int codigo;
  String descricao;
  double preco;

  Produto(this.codigo, this.descricao, this.preco);
}

void main() {
  // Criando uma lista do tipo da classe Produto
  List<Produto> Produtos = [];

  // Cadastro dos produtos
  for (int i = 0; i < 12; i++) {
    print('Cadastro do produto ${i + 1}:');
    print('Código:');
    int codigo = int.parse(stdin.readLineSync()!);
    print('Descrição:');
    String descricao = stdin.readLineSync()!;
    print('Preço:');
    double preco = double.parse(stdin.readLineSync()!);

    Produtos.add(Produto(codigo, descricao, preco));
  }

  // Ordenação dos produtos pelo código
  Produtos.sort((a, b) => a.codigo.compareTo(b.codigo));

  // Busca sequencial
  int buscaSequencial = 0;
  int buscaCodigo = 123; // Código a ser procurado
  for (int i = 0; i < Produtos.length; i++) {
    buscaSequencial++;
    if (Produtos[i].codigo == buscaCodigo) {
      print('Produto encontrado usando busca sequencial');
      break;
    }
  }

  // Busca binária
  int comparacaoBinaria = 0;
  int low = 0;
  int high = Produtos.length - 1;
  while (low <= high) {
    comparacaoBinaria++;
    int mid = (low + high) ~/ 2;
    if (Produtos[mid].codigo == buscaCodigo) {
      print('Produto encontrado usando busca binária');
      break;
    } else if (Produtos[mid].codigo < buscaCodigo) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  print('Comparações (Sequencial): $buscaSequencial');
  print('Comparações (Binária): $comparacaoBinaria');
}
