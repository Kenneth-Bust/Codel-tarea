// Función que convierte dos enteros en una cadena de texto
String stringify(int x, int y) {
  return '$x $y'; // Devuelve una cadena que concatena los dos enteros separados por un espacio
}

// Función principal que prueba la función stringify
void main(List<String> arguments) {
  // Verifica si la función stringify devuelve el resultado esperado
  assert(stringify(2, 3) == '2 3',
      "Your stringify method returned '${stringify(2, 3)}' instead of '2 3'");
  print('Success!'); // Imprime "Success!" si la función pasa la prueba
}

