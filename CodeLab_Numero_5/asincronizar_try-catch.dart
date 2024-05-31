import 'dart:async';

// Esta función asincrónica intenta cambiar el nombre de usuario.
// Retorna un Future<String> que eventualmente contendrá el nuevo nombre de usuario o un mensaje de error.
Future<String> changeUsername() async {
  try {
    // Intenta obtener el nuevo nombre de usuario utilizando la función fetchNewUsername.
    return await fetchNewUsername();
  } catch (err) {
    // Si hay un error, devuelve el mensaje de error como una cadena.
    return err.toString();
  }
}

// Esta función asincrónica simula una llamada de red para obtener un nuevo nombre de usuario.
// Retorna un Future<String> que eventualmente contendrá el nuevo nombre de usuario.
Future<String> fetchNewUsername() =>
    Future.delayed(const Duration(milliseconds: 500), () => throw UserError());

// Clase que representa un error personalizado para indicar que el nuevo nombre de usuario es inválido.
class UserError implements Exception {
  @override
  String toString() => 'New username is invalid';
}

// Función principal que realiza las pruebas
void main() async {
  final List<String> messages = [];
  const typoMessage = 'Test failed! Check for typos in your return value';

  print('Testing...');
  try {
    messages
      // Verifica si la excepción UserError fue capturada correctamente.
      ..add(_makeReadable(
          testLabel: 'Checking if UserError was caught:',
          testResult: await _asyncDidCatchException(changeUsername),
          readableErrors: {
            typoMessage: typoMessage,
            _noCatch:
                'Did you remember to call fetchNewUsername within a try/catch block?',
          }))
      // Verifica si el mensaje de error es correcto cuando se captura la excepción UserError.
      ..add(_makeReadable(
          testLabel: 'Checking if error message is correct:',
          testResult: await _asyncErrorEquals(changeUsername),
          readableErrors: {
            typoMessage: typoMessage,
            _noCatch:
                'Did you remember to call fetchNewUsername within a try/catch block?',
          }))
      // Remueve los resultados exitosos (_passed) de la lista de mensajes.
      ..removeWhere((m) => m.contains(_passed))
      // Convierte la lista de mensajes en una lista y descarta los elementos que ya no son necesarios.
      ..toList();

    // Si no hay mensajes de error, todas las pruebas pasaron.
    if (messages.isEmpty) {
      print('Success. All tests passed!');
    } else {
      // Si hay mensajes de error, imprímelos.
      messages.forEach(print);
    }
  } catch (e) {
    // Captura cualquier excepción y la imprime.
    print('Tried to run solution, but received an exception: $e');
  }
}

// Función auxiliar para hacer los mensajes de error más legibles.
String _makeReadable({
  required String testResult,
  required Map<String, String> readableErrors,
  required String testLabel,
}) {
  if (readableErrors.containsKey(testResult)) {
    final readable = readableErrors[testResult];
    return '$testLabel $readable';
  } else {
    return '$testLabel $testResult';
  }
}

// Función asincrónica que verifica si la excepción UserError fue capturada correctamente.
Future<String> _asyncDidCatchException(Function fn) async {
  var caught = true;
  try {
    await fn();
  } on UserError catch (_) {
    caught = false;
  }

  // Si la excepción no fue capturada, retorna '_noCatch', de lo contrario, retorna '_passed'.
  if (caught == false) {
    return _noCatch;
  } else {
    return _passed;
  }
}

// Función asincrónica que verifica si el mensaje de error es correcto cuando se captura la excepción UserError.
Future<String> _asyncErrorEquals(Function fn) async {
  final result = await fn();
  if (result == UserError().toString()) {
    return _passed;
  } else {
    return 'Test failed! Did you stringify and return the caught error?';
  }
}

// Constante que representa un estado de éxito.
const _passed = 'PASSED';

// Constante que representa un estado donde no se capturó ninguna excepción.
const _noCatch = 'NO_CATCH';

