void main() {
  int edad = 20;
  String nombre = "José";
  double sueldo = 1500.50;

  List<String> nombres = List.empty(growable: true);
  nombres.add("José");
  nombres.add("Karina");
  nombres.add("Cristina");

  List<int> edades = List.empty(growable: true);
  edades.add(20);
  edades.add(30);
  edades.add(28);

  List<double> sueldos = List.empty(growable: true);
  sueldos.add(1500.50);
  sueldos.add(2500.0);
  sueldos.add(3500.83);

  for (int indice = 0; indice < nombres.length; indice++) {
    print("Empleado: ${nombres[indice]}");
    print("Edad: ${edades[indice]}");
    print("Sueldo: ${sueldos[indice]}");
    print("*******************");
  }

  print("NUEVA LECTURA");

  int indice = 0;
  for (String nombre in nombres) {
    print("Empleado: $nombre");
    print("Edad: ${edades[indice]}");
    print("Sueldo: ${sueldos[indice]}");
    print("*******************");
    indice++;
  }

  print("NUEVA LECTURA USANDO WHILE");

  indice = 0;
  while (indice < nombres.length) {
    print("Empleado: ${nombres[indice]}");
    print("Edad: ${edades[indice]}");
    print("Sueldo: ${sueldos[indice]}");
    print("*******************");
    indice++;
  }

  print("");
  print("NUEVA LECTURA USANDO DO WHILE");

  indice = 0;
  do {
    // Sí o sí se ejecuta una vez
    print("Empleado: ${nombres[indice]}");
    print("Edad: ${edades[indice]}");
    print("Sueldo: ${sueldos[indice]}");
    print("*******************");
    indice++;
  } while (indice < nombres.length);
}
