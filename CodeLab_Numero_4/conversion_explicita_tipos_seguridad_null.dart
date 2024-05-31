void imprimirLongitudString(Object talVezString) {
  // Verifica si talVezString es una instancia de String.
  if (talVezString is String) {
    // Si es una instancia de String, imprime la longitud del string.
    print('Longitud del string: ${talVezString.length}');
  } else {
    // Si no es una instancia de String, imprime un mensaje indicando que el valor proporcionado no es un string.
    print('El valor proporcionado no es un string');
  }
}

void main() {
  // Definición de dos variables de tipo Object con diferentes tipos de valores.
  Object valor1 = '¡Hola, Dart!'; // Una cadena
  Object valor2 = 42;              // Un entero

  // Llamadas a la función imprimirLongitudString con las variables definidas anteriormente.
  imprimirLongitudString(valor1); // Salida: Longitud del string: 12
  imprimirLongitudString(valor2); // Salida: El valor proporcionado no es un string
}
