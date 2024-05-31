class MyClass {
  int value1 = 2; // Primera variable de instancia con valor inicial de 2
  int value2 = 3; // Segunda variable de instancia con valor inicial de 3
  int value3 = 5; // Tercera variable de instancia con valor inicial de 5

  int get product => value1 * value2 * value3; // Getter para calcular el producto de las variables de instancia

  void incrementValue1() => value1++; // Método para incrementar el valor de value1 en 1

  String joinWithCommas(List<String> strings) => strings.join(','); // Método para unir los elementos de una lista con comas
}

void main() {
  final obj = MyClass(); // Instancia de la clase MyClass
  final errs = <String>[]; // Lista para almacenar mensajes de error

  try {
    final product = obj.product; // Calcula el producto de las variables de instancia

    if (product != 30) {
      errs.add(
          'The product property returned $product \n instead of the expected value (30).'); // Agrega un mensaje de error si el producto es incorrecto
    }
  } catch (e) {
    print(
        'Tried to use MyClass.product, but encountered an exception: \n ${e.runtimeType}.'); // Maneja excepciones al calcular el producto
    return;
  }

  try {
    obj.incrementValue1(); // Incrementa el valor de value1 en 1

    if (obj.value1 != 3) {
      errs.add(
          'After calling incrementValue, value1 was ${obj.value1} \n instead of the expected value (3).'); // Agrega un mensaje de error si el valor de value1 es incorrecto después de la incrementación
    }
  } catch (e) {
    print(
        'Tried to use MyClass.incrementValue1, but encountered an exception: \n ${e.runtimeType}.'); // Maneja excepciones al incrementar value1
    return;
  }

  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']); // Une los elementos de la lista con comas

    if (joined != 'one,two,three') {
      errs.add(
          'Tried calling joinWithCommas([\'one\', \'two\', \'three\']) \n and received $joined instead of the expected value (\'one,two,three\').'); // Agrega un mensaje de error si la unión de la lista es incorrecta
    }
  } catch (e) {
    print(
        'Tried to use MyClass.joinWithCommas, but encountered an exception: \n ${e.runtimeType}.'); // Maneja excepciones al unir los elementos con comas
    return;
  }

  if (errs.isEmpty) {
    print('Success!'); // Imprime "Success!" si no hay errores
  } else {
    errs.forEach(print); // Imprime los mensajes de error si hay errores
  }
}
