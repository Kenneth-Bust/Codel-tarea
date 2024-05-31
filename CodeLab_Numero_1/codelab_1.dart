import 'Bicycle.dart'; // Importa la definición de la clase Bicycle
import 'CreateFactory.dart'; // Importa la definición de la clase Circle y Shape
import 'Point.dart'; // Importa la definición de la clase Point
import 'Rectangle.dart'; // Importa la definición de la clase Rectangle

// Función que genera un grito de longitud específica
String scream(int length) => "A${'a' * length}h!";

void main(List<String> arguments) {
  // Instancia de la clase Bicycle con cadencia 5 y marcha 2
  var bike = Bicycle(5, 2);
  // Imprime la representación en cadena de la bicicleta
  print(bike);
  print('\n');
  
  // Instancia de la clase Rectangle con origen en (10, 20), ancho 100 y alto 200
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  // Instancia de la clase Rectangle con origen en (10, 10) y dimensiones por defecto
  print(Rectangle(origin: const Point(10, 10)));
  // Instancia de la clase Rectangle con ancho 200 y origen y alto por defecto
  print(Rectangle(width: 200));
  // Instancia de la clase Rectangle con todos los parámetros por defecto
  print(Rectangle());
  print('\n');
  
  // Parte 3: Instanciación y uso de la clase Shape
  final circle = Shape('circle'); // Crea una forma de tipo círculo
  final square = Shape('square'); // Crea una forma de tipo cuadrado
  // Imprime el área del círculo
  print(circle.area);
  // Imprime el área del cuadrado
  print(square.area);

  // Parte 5: Programación funcional
  print('\n');
  final values = [1, 2, 3, 5, 10, 50]; // Lista de valores enteros
  // Itera sobre cada longitud en values e imprime el resultado de scream
  for (var length in values) {
    print(scream(length));
  }
  print('\n');
  
  // Conversión de código imperativo a funcional
  // Aplica la función scream a cada valor en values e imprime el resultado
  values.map(scream).forEach(print);
  print('\n');
  
  // Características de los Iterables
  // Salta el primer valor, toma los siguientes tres, aplica scream y luego imprime
  values.skip(1).take(3).map(scream).forEach(print);
}
