// Clase para representar un objeto de datos con tres propiedades
class MyDataObject {
  final int anInt; // Propiedad entera
  final String aString; // Propiedad de cadena
  final double aDouble; // Propiedad de doble precisión

  // Constructor que permite inicializar las propiedades con valores predeterminados si no se proporcionan
  MyDataObject({
    this.anInt = 1, // Valor predeterminado para anInt
    this.aString = 'Old!', // Valor predeterminado para aString
    this.aDouble = 2.0, // Valor predeterminado para aDouble
  });

  // Método para crear una copia del objeto con nuevas propiedades opcionales proporcionadas
  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      // Si se proporciona un nuevo valor, se usará; de lo contrario, se mantendrá el valor actual
      anInt: newInt ?? this.anInt,
      aString: newString ?? this.aString,
      aDouble: newDouble ?? this.aDouble,
    );
  }
}

// Función principal que prueba la clase MyDataObject
void main() {
  final source = MyDataObject(); // Objeto de datos original
  final errs = <String>[]; // Lista para almacenar mensajes de error

  try {
    // Prueba copyWith con nuevos valores proporcionados
    final copy = source.copyWith(newInt: 12, newString: 'New!', newDouble: 3.0);

    // Verifica si las propiedades del objeto copiado coinciden con los nuevos valores
    if (copy.anInt != 12) {
      errs.add(
          'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s anInt was ${copy.anInt} rather than the expected value (12).');
    }

    if (copy.aString != 'New!') {
      errs.add(
          'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aString was ${copy.aString} rather than the expected value (\'New!\').');
    }

    if (copy.aDouble != 3.0) {
      errs.add(
          'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aDouble was ${copy.aDouble} rather than the expected value (3.0).');
    }
  } catch (e) {
    print(
        'Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0) \n and got an exception: ${e.runtimeType}');
  }

  try {
    // Prueba copyWith sin proporcionar nuevos valores
    final copy = source.copyWith();

    // Verifica si las propiedades del objeto copiado coinciden con los valores predeterminados
    if (copy.anInt != 1) {
      errs.add(
          'Called copyWith(), and the new object\'s anInt was ${copy.anInt} \n rather than the expected value (1).');
    }

    if (copy.aString != 'Old!') {
      errs.add(
          'Called copyWith(), and the new object\'s aString was ${copy.aString} \n rather than the expected value (\'Old!\').');
    }

    if (copy.aDouble != 2.0) {
      errs.add(
          'Called copyWith(), and the new object\'s aDouble was ${copy.aDouble} \n rather than the expected value (2.0).');
    }
  } catch (e) {
    print('Called copyWith() and got an exception: ${e.runtimeType}');
  }

  // Imprime el resultado de la prueba
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}


