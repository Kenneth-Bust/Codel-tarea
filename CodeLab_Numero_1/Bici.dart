class Bicycle {
  // Variables miembro (campos) de la clase Bicycle
  int cadence = 0; // Cadencia de pedaleo
  int _speed = 0; // Velocidad actual (privada)
  int gear = 0; // Marcha actual

  // Constructor que inicializa la cadencia y la marcha
  Bicycle(int cadence, int gear) {
    // Asigna el valor del parámetro 'cadence' a la variable de instancia 'cadence'
    this.cadence = cadence;
    // Asigna el valor del parámetro 'gear' a la variable de instancia 'gear'
    this.gear = gear;
  }

  // Getter para obtener la velocidad actual
  int get speed => _speed;

  // Método para aplicar freno y disminuir la velocidad
  void applyBrake(int decrement) {
    // Decrementa la velocidad actual por el valor proporcionado
    _speed -= decrement;
    // Asegura que la velocidad no sea negativa
    if (_speed < 0) {
      _speed = 0;
    }
  }

  // Método para aumentar la velocidad
  void speedUp(int increment) {
    // Incrementa la velocidad actual por el valor proporcionado
    _speed += increment;
  }

  // Sobrescribe el método toString para proporcionar una representación en cadena
  @override
  String toString() => 'Bicycle: $_speed mph';
}
