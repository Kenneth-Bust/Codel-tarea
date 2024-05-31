void main() {
  // Declaración de variables 'name' y 'address' que pueden ser nulas
  String? name = 'Jane'; // Variable 'name' que contiene el nombre 'Jane' o podría ser nula
  String? address; // Variable 'address' que puede contener una dirección o ser nula

  try {
    // Verifica si 'name' es igual a 'Jane' y 'address' es nulo
    if (name == 'Jane' && address == null) {
      // Si es así, asigna null a 'name'
      name = null;
      // Imprime 'Success!' si se ejecuta correctamente
      print('Success!');
    } else {
      // Si no se cumplen las condiciones anteriores, imprime un mensaje de error
      print('Not quite right, try again!');
    }
  } catch (e) {
    // Manejo de excepciones: imprime el tipo de excepción si ocurre alguna
    print('Exception: ${e.runtimeType}');
  }
}

