String? siempreDevuelve(int? n) {
  if (n == null) {
    return null; // Devuelve null si el valor de entrada es nulo
  } else if (n == 0) {
    return 'cero';
  } else if (n < 0) {
    throw ArgumentError('No se permiten valores negativos.');
  } else {
    if (n > 1000) {
      return 'grande';
    } else {
      return n.toString();
    }
  }
}

void main() {
  print(siempreDevuelve(5));  // Salida: 5
  print(siempreDevuelve(0));  // Salida: cero
  print(siempreDevuelve(-1)); // Lanza una excepción: No se permiten valores negativos.
  print(siempreDevuelve(null)); // Salida: null
}

