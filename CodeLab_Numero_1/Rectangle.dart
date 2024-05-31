import 'Point.dart'; // Importa la definición de la clase 'Point' desde Point.dart

// Definición de la clase 'Rectangle' que representa un rectángulo en un plano 2D
class Rectangle {
  // Propiedades finales que representan el origen, ancho y alto del rectángulo
  final Point origin;
  final int width;
  final int height;

  // Constructor constante que inicializa el rectángulo
  const Rectangle({
    this.origin = const Point(0, 0), // Origen predeterminado en (0, 0) si no se proporciona
    this.width = 0, // Ancho predeterminado como 0 si no se proporciona
    this.height = 0, // Alto predeterminado como 0 si no se proporciona
  });

  // Método para proporcionar una representación en cadena del rectángulo
  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}
