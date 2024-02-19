// Criação da classe Estudante e seus atributos
class Estudante {
  String nome;
  double nota1;
  double nota2;

  Estudante(this.nome, this.nota1, this.nota2);
  // Calculando a média das notas
  double calculaMedia() => (nota1 * 2 + nota2 * 3) / 5;
}

void main() {
  List<Estudante> Estudantes = [
    Estudante('Geovana', 8.0, 9.5),
    Estudante('Rosilene', 7.0, 7.5),
    Estudante('Lindomar', 6.0, 8.5),
    Estudante('Neilane', 4.0, 7.0),
    Estudante('Myna', 9.0, 7.0),
    Estudante('Maicon', 5.5, 8.5),
    Estudante('Sara', 6.0, 9.0),
    Estudante('Alissya', 8.0, 7.0),
  ];
  // Ordenando os Estudantes de acordo com a média ponderada
  Estudantes.sort((a, b) => b.calculaMedia().compareTo(a.calculaMedia()));

  print('\nAlunos ordenados pela média ponderada:');
  // Mostrando a ordem dos Estudantes de acordo com a média ponderada
  Estudantes.forEach(
      (estudante) => print('${estudante.nome}: ${estudante.calculaMedia()}'));
  //Ordenando de acordo com a nota 1
  Estudantes.sort((a, b) => a.nota1.compareTo(b.nota1));

  print('\nAlunos ordenados pela nota 1:');
  // Mostrando a ordem dos Estudantes de acordo com a nota 1
  Estudantes.forEach(
      (estudante) => print('${estudante.nome}: ${estudante.nota1}'));
  //Declarando a lista dos Estudantes reprovados
  List<Estudante> reprovados =
      Estudantes.where((estudante) => estudante.calculaMedia() < 7).toList();
  // Ordenando os Estudantes reprovados em ordem alfabética
  reprovados.sort((a, b) => a.nome.compareTo(b.nome));

  print('\nAlunos reprovados:');
  // Mostrando Estudantes reprovados
  reprovados.forEach((estudante) => print('${estudante.nome}'));
}
