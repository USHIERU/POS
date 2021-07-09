part of shared;

class InvalidArgumentError implements Exception{
  final String error;

  InvalidArgumentError(this.error);
}