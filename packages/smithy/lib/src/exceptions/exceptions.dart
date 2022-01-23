import 'package:smithy/smithy.dart';

abstract class SmithyException implements Exception {
  String? get message;
  RetryConfig? get retryConfig;
}
