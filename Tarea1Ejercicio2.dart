void main() {
  List<int> lista = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 8];

  List<int> elementosUnicos =
      lista.where((e) => lista.where((x) => x == e).length == 1).toList();

  print(elementosUnicos);
}
