// Esta función toma un número variable de argumentos opcionales y los concatena en una cadena, separados por comas.
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var total = '$a'; // Inicializa la cadena con el primer argumento 'a'
  if (b != null) total = '$total,$b'; // Agrega 'b' a la cadena si no es nulo
  if (c != null) total = '$total,$c'; // Agrega 'c' a la cadena si no es nulo
  if (d != null) total = '$total,$d'; // Agrega 'd' a la cadena si no es nulo
  if (e != null) total = '$total,$e'; // Agrega 'e' a la cadena si no es nulo
  return total; // Devuelve la cadena resultante
}

void main() {
  final errs = <String>[]; // Lista para almacenar mensajes de error

  try {
    final value = joinWithCommas(1); // Llama a la función con un solo argumento
    if (value != '1') {
      errs.add(
          'Tried calling joinWithCommas(1) and got $value instead of the expected (\'1\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling joinWithCommas(1), but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3); // Llama a la función con tres argumentos
    if (value != '1,2,3') {
      errs.add(
          'Tried calling joinWithCommas(1, 2, 3) and got $value instead of the expected (\'1,2,3\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling joinWithCommas(1, 2 ,3), but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3, 4, 5); // Llama a la función con cinco argumentos
    if (value != '1,2,3,4,5') {
      errs.add(
          'Tried calling joinWithCommas(1, 2, 3, 4, 5) and got $value instead of the expected (\'1,2,3,4,5\').');
    }
  } on UnimplementedError {
    print(
        'Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print(
        'Tried calling stringify(1, 2, 3, 4 ,5), but encountered an exception: ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!'); // Imprime 'Success!' si no hay errores
  } else {
    errs.forEach(print); // Imprime los mensajes de error si hay alguno
  }
}
