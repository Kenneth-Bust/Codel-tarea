import 'CreateFactory.dart'; // Importa un archivo que contiene la clase Circle

// Parte 4: Implementación de una interfaz
class CircleMock implements Circle {
  // Declaración de variables miembro
  num area = 0; // Área del círculo
  num radius = 0; // Radio del círculo

  // Implementación del método calculateArea de la interfaz Circle
  @override
  void calculateArea() {
    area = 3.14159 * radius * radius; // Fórmula para el área de un círculo
  }

  // Implementación del método setRadius de la interfaz Circle
  @override
  void setRadius(num radius) {
    this.radius = radius; // Asigna el valor del radio
  }
}
