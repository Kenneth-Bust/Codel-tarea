// Función que toma una cadena opcional y devuelve su versión en mayúsculas o null si la cadena original es null
String? upperCaseIt(String? str) {
  return str?.toUpperCase(); // Si la cadena no es nula, la convierte a mayúsculas; de lo contrario, devuelve null
}

void main() {
  try {
    String? one = upperCaseIt(null); // Llamada a upperCaseIt con un argumento nulo
    if (one != null) {
      print('Looks like you\'re not returning null for null inputs.'); // Imprime un mensaje si no se devuelve null para una entrada nula
    } else {
      print('Success when str is null!'); // Imprime un mensaje de éxito si str es null
    }
  } catch (e) {
    print(
        'Tried calling upperCaseIt(null) and got an exception: \n ${e.runtimeType}.'); // Maneja excepciones al llamar a upperCaseIt con un argumento nulo
  }

  try {
    String? two = upperCaseIt('a string'); // Llamada a upperCaseIt con una cadena no nula
    if (two == null) {
      print('Looks like you\'re returning null even when str has a value.'); // Imprime un mensaje si se devuelve null incluso cuando str tiene un valor
    } else if (two != 'A STRING') {
      print(
          'Tried upperCaseIt(\'a string\'), but didn\'t get \'A STRING\' in response.'); // Imprime un mensaje si no se obtiene 'A STRING' como respuesta
    } else {
      print('Success when str is not null!'); // Imprime un mensaje de éxito si str no es null
    }
  } catch (e) {
    print(
        'Tried calling upperCaseIt(\'a string\') and got an exception: \n ${e.runtimeType}.'); // Maneja excepciones al llamar a upperCaseIt con una cadena no nula
  }
}
