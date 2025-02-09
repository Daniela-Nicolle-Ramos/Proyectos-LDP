class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);
}

class Biblioteca {
  List<Libro> libros = [];

  void AgregarLibro(Libro libro) {
    libros.add(libro);
  }

  void EliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> LibrosOrdenadosPorAnio() {
    libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return libros;
  }
}

void main() {
  Biblioteca biblioteca = Biblioteca();

  biblioteca.AgregarLibro(Libro('Harry Potter', 'JK Rowlling', 1997));
  biblioteca.AgregarLibro(Libro('1984', 'George Orwell', 1949));
  biblioteca.AgregarLibro(Libro('Tokio blues', 'Haruki Murakami', 1987));
  biblioteca.AgregarLibro(Libro('Indigno de ser humano', 'Osamu Dazai', 1948));

  print('Libros ordenados por anio:');
  for (var libro in biblioteca.LibrosOrdenadosPorAnio()) {
    print('${libro.titulo} - ${libro.anioPublicacion}');
  }
  print('\nBuscand libro del autor Haruki Murakami...:');
  biblioteca
      .buscarPorAutor('Haruki Murakami')
      .forEach((libro) => print(libro.titulo));

  print('\nEliminando un libro...');
  biblioteca.EliminarLibro('Indigno de ser humano');

  print('\nLibros restantes en la biblioteca:');
  biblioteca.LibrosOrdenadosPorAnio()
      .forEach((libro) => print('${libro.titulo} - ${libro.autor}'));
}
