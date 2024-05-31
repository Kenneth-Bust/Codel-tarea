// Definición de la clase Color
class Color {
  int red;
  int green;
  int blue;

  // Constructor que inicializa los componentes rojo, verde y azul
  Color(this.red, this.green, this.blue);

  // Constructor con nombre para crear el color negro (todos los componentes son 0)
  Color.black() : this(0, 0, 0); // Llama al constructor principal con los valores 0, 0, 0
}

// Pruebas de la solución (¡No editar!)
void main() {
  final errs = <String>[]; // Lista para almacenar mensajes de error

  try {
    final result = Color.black(); // Crea una instancia de Color usando el constructor black

    // Verifica si los componentes red, green y blue son todos 0
    if (result.red != 0) {
      errs.add(
          'Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    if (result.green != 0) {
      errs.add(
          'Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    if (result.blue != 0) {
      errs.add(
          'Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    print(
        'Called Color.black() and got an exception of type ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!'); // Imprime 'Success!' si no hay errores
  } else {
    errs.forEach(print); // Imprime los mensajes de error si hay alguno
  }
}

