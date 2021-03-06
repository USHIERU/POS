class InvalidArgumentError implements Exception {
  String _err;

  InvalidArgumentError(this._err);

  get errMsg => _err;
}
