// Definición de la clase OtraClase
class OtraClase {
  // Declaración de una variable de instancia con inicialización directa.
  int enDeclaracion = 0;

  // Declaración de una variable de instancia con inicializador formal.
  int conInicializadorFormal;

  // Declaración de una variable de instancia en la lista de inicialización del constructor.
  int enListaInicializacion;

  // Constructor de la clase OtraClase que inicializa la variable conInicializadorFormal y enListaInicializacion.
  OtraClase(this.conInicializadorFormal) : enListaInicializacion = 0;
}

void main() {
  // Creación de una instancia de la clase OtraClase utilizando el constructor.
  var instancia = OtraClase(5);

  // Imprime el valor de la variable enDeclaracion.
  print(instancia.enDeclaracion);        // Salida: 0

  // Imprime el valor de la variable conInicializadorFormal.
  print(instancia.conInicializadorFormal); // Salida: 5

  // Imprime el valor de la variable enListaInicializacion.
  print(instancia.enListaInicializacion);   // Salida: 0
}

