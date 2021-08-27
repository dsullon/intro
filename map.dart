void main() {
  // Las horas extras será el 2.5% del sueldo básico,
  // solo para aquellos cuyo calculo sea true

  // Obtener datos
  List<Map> listado = cargarDatos();

  // Calcular Horas Extras del empleado A
  for (var empleado in listado) {
    calcularHoras(empleado);
  }

  mostraDatos(listado);
}

List<Map> cargarDatos() {
  List<Map> listadoEmpleados = List.empty(growable: true);
  Map<String, dynamic> empleadoA = {
    "nombre": "Pedro Rojas",
    "sueldo": 2500.0,
    "edad": 28,
    "horas_extras": 15,
    "total_pagar": 0,
    "calcular_horas": true
  };

  Map<String, dynamic> empleadoB = {
    "nombre": "Maria Torres",
    "sueldo": 5300.0,
    "edad": 26,
    "horas_extras": 20,
    "total_pagar": 0,
    "calcular_horas": false
  };

  Map<String, dynamic> empleadoC = {
    "nombre": "Francis Romero",
    "sueldo": 4800.0,
    "edad": 32,
    "horas_extras": 10,
    "total_pagar": 0,
    "calcular_horas": true
  };

  listadoEmpleados.add(empleadoA);
  listadoEmpleados.add(empleadoB);
  listadoEmpleados.add(empleadoC);

  return listadoEmpleados;
}

void calcularHoras(Map empleado) {
  double importeTotal = empleado["sueldo"];
  if (empleado["calcular_horas"]) {
    double importe_horas =
        (empleado["sueldo"] * 0.025) * empleado["horas_extras"];
    importeTotal += importe_horas;
  }
  empleado["total_pagar"] = importeTotal;
}

void mostraDatos(List<Map> listado) {
  for (var empleado in listado) {
    print("Empleado: ${empleado['nombre']}");
    print("Sueldo: ${empleado['sueldo']}");
    print("Horas Extras: ${empleado['horas_extras']}");
    print("Total Pagar: ${empleado['total_pagar']}");
    print("*************************");
  }
}
