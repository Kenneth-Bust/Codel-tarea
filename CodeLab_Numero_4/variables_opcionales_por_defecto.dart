// Definición de la función saludar
void saludar(String nombre, [String titulo = 'Estimado']) {
  // Imprime el saludo con el título y el nombre proporcionados
  print('$titulo $nombre');
}

// Función principal
void main() {
  // Llamada a la función saludar con solo el nombre proporcionado
  saludar('Juan');                // Salida: Estimado Juan
  
  // Llamada a la función saludar con nombre y título proporcionados
  saludar('Ana', 'Dra.');  // Salida: Dra. Ana
}

