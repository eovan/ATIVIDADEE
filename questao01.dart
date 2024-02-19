void main() {
  List<double> salarios = [2400, 2000, 1300, 1200, 900];

  List<String> nomes = ["Flora", "Pedro", "Sonia", "Dalva", "Gilberto"];

  salarios.sort();
  print(salarios);

  List<double> decrescente = salarios.reversed.toList();
  print("Decrescente: ");
  print(decrescente);

  nomes.sort();
  print("Nomes em ordem alfabética> ");
  print(nomes);
}
