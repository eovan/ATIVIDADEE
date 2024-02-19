void main() {
  List<int> numeros = [3, 40, 12, 65, 34, 14, 11, 23, 2, 26];

  numeros.sort();

  int menor = numeros[0];
  print(menor);
  int cont = 0;
  //Buscar quantas vezes o menor número se repete
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == menor) {
      cont++;
    }
  }
  print("Se repete");
  print(cont);

  print("------------------------------------------------------");

  print("Maior: ");
  //Encontrar o maior número
  int maior = numeros[9];
  print(maior);
  int cont2 = 0;
  //Buscar quantas vezes o menor número se repete
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == maior) {
      cont2++;
    }
  }
  print("Se repete");
  print(cont2);
}
