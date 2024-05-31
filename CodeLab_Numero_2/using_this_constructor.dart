// Definición de la clase MyClass
class MyClass {
  final int anInt; // Un entero inmutable
  final String aString; // Una cadena inmutable
  final double aDouble; // Un número de punto flotante inmutable

  // Constructor de la clase que inicializa las propiedades con los valores proporcionados
  MyClass(this.anInt, this.aString, this.aDouble);
}

// Función principal
void main() {
  final errs = <String>[]; // Lista para almacenar mensajes de error

  try {
    final obj = MyClass(1, 'two', 3); // Crea una instancia de MyClass

    // Verifica si las propiedades tienen los valores esperados
    if (obj.anInt != 1) {
      errs.add(
          'Called MyClass(1, \'two\', 3) and got an object with anInt of ${obj.anInt} \n instead of the expected value (1).');
    }

    if (obj.aString != 'two') {
      errs.add(
          'Called MyClass(1, \'two\', 3) and got an object with aString of \'${obj.aString}\' \n instead of the expected value (\'two\').');
    }

    if (obj.aDouble != 3) {
      errs.add(
          'Called MyClass(1, \'two\', 3) and got an object with aDouble of ${obj.aDouble} \n instead of the expected value (3).');
    }
  } catch (e) {
    print(
        'Called MyClass(1, \'two\', 3) and got an exception \n of type ${e.runtimeType}.');
  }

  // Imprime 'Success!' si no hay errores, de lo contrario, imprime los mensajes de error
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}

