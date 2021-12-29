class SmithyError {
  const SmithyError(this.type);

  final SmithyErrorType type;
}

enum SmithyErrorType { client, server }
