// Clase Recipe que representa una receta
class Recipe {
  final List<String> ingredients; // Lista de ingredientes de la receta
  final int calories; // Calorías de la receta
  final double milligramsOfSodium; // Miligramos de sodio de la receta

  // Constructor constante que inicializa los atributos de la receta
  const Recipe(this.ingredients, this.calories, this.milligramsOfSodium);
}

// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    // Creación de una instancia de Recipe y comprobación de sus atributos
    const obj = Recipe(['1 egg', 'Pat of butter', 'Pinch salt'], 120, 200);

    if (obj.ingredients.length != 3) {
      errs.add(
          'Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with ingredient list of length ${obj.ingredients.length} rather than the expected length (3).');
    }

    if (obj.calories != 120) {
      errs.add(
          'Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a calorie value of ${obj.calories} rather than the expected value (120).');
    }

    if (obj.milligramsOfSodium != 200) {
      errs.add(
          'Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a milligramsOfSodium value of ${obj.milligramsOfSodium} rather than the expected value (200).');
    }
  } catch (e) {
    print(
        'Tried calling Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and received a null.'); // Maneja excepciones al llamar a Recipe
  }

  if (errs.isEmpty) {
    print('Success!'); // Imprime "Success!" si no hay errores
  } else {
    errs.forEach(print); // Imprime los mensajes de error si hay errores
  }
}

