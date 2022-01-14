import 'package:smithy/smithy.dart';

abstract class SmithyException implements Exception {
  String? get message;
  bool get isRetryable;
}

abstract class SmithyHttpException implements SmithyException {
  ErrorKind get kind;
  int? get statusCode;
}
