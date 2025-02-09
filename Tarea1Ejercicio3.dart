class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double salarioTotal(List<Empleado> empleados) =>
    empleados.fold(0, (sum, e) => sum + e.salario);

double salarioPromedio(List<Empleado> empleados) =>
    salarioTotal(empleados) / empleados.length;

void main() {
  List<Empleado> empleados = [
    Empleado('Pablito', 'Programador', 30000),
    Empleado('Mariana', 'Administradora', 14000),
    Empleado('Pablo', 'Gerente', 25000),
    Empleado('Adilio', 'Venderdor', 10000)
  ];

  print('Salario total: ${salarioTotal(empleados)}');
  print('Salario promedio: ${salarioPromedio(empleados)}');
}
