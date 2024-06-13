class Failure {
  final String message;
  Failure([this.message = 'An unexpected error has occured.']);
}

class ServerException implements Exception {
  final String message;
  const ServerException(this.message);
}
