import 'dart:math'; // Importa la biblioteca 'dart:math' para usar funciones matemáticas

// Clase abstracta 'Shape' con un constructor de fábrica para crear diferentes formas.
abstract class Shape {
  // Constructor de fábrica para crear instancias de diferentes formas según el tipo proporcionado
  factory Shape(String type) {
    if (type == 'circle') return Circle(2); // Retorna un círculo con radio 2
    if (type == 'square') return Square(2); // Retorna un cuadrado con lado 2
    throw 'Can\'t create $type.'; // Lanza excepción si el tipo no es reconocido
  }

  // Propiedad abstracta para calcular el área
  num get area;
}

// Clase 'Circle' que implementa 'Shape' y representa un círculo
class Circle implements Shape {
  final num radius; // Radio del círculo
  Circle(this.radius); // Constructor que inicializa el radio

  // Implementación del getter 'area' para calcular el área del círculo
  num get area => pi * pow(radius, 2); // Calcula el área del círculo (π * radio^2)
}

// Clase 'Square' que implementa 'Shape' y representa un cuadrado
class Square implements Shape {
  final num side; // Lado del cuadrado
  Square(this.side); // Constructor que inicializa el lado

  // Implementación del getter 'area' para calcular el área del cuadrado
  num get area => pow(side, 2); // Calcula el área del cuadrado (lado^2)
}
