// Definición de la función prepararSandwich
// Esta función toma dos parámetros: tipoPan (obligatorio) y relleno (opcional)
void prepararSandwich(String tipoPan, [String? relleno]) {
  // Comprueba si se proporcionó un relleno
  if (relleno != null) {
    // Si hay un relleno, imprime un mensaje con el tipo de pan y el relleno
    print('Sandwich de $tipoPan con relleno de $relleno');
  } else {
    // Si no hay relleno, imprime un mensaje con solo el tipo de pan
    print('Sandwich de $tipoPan sin relleno');
  }
}

void main() {
  // Llamada a la función prepararSandwich con solo el tipo de pan
  prepararSandwich('Integral'); // Salida: Sandwich de Integral sin relleno
  
  // Llamada a la función prepararSandwich con el tipo de pan y un relleno
  prepararSandwich('Integral', 'jamón'); // Salida: Sandwich de Integral con relleno de jamón
}
