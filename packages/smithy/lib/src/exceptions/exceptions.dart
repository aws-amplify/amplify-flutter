import 'package:built_value/serializer.dart';

class SmithyException implements Exception {
  const SmithyException([String? message])
      : message = message ?? 'An unknown error occurred.';

  final String message;
}

class SmithyClientException extends SmithyException {
  const SmithyClientException([String? message]) : super(message);
}

class SmithyHttpClientException extends SmithyClientException {
  const SmithyHttpClientException(this.statusCode, [String? message])
      : super(message);

  final int statusCode;
}

class SmithyServerException extends SmithyException {
  const SmithyServerException([String? message]) : super(message);
}

class SmithyHttpServerException extends SmithyClientException {
  const SmithyHttpServerException(this.statusCode, [String? message])
      : super(message);

  final int statusCode;
}

/// An exception thrown during a serialization or deserialization operation.
class SerializationException implements Exception {
  const SerializationException(this.message);

  final String message;

  @override
  String toString() => message;
}

class SmithyHttpExceptionSerializer
    implements StructuredSerializer<SmithyException> {
  const SmithyHttpExceptionSerializer(this.statusCode);

  final int statusCode;

  @override
  SmithyException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (statusCode >= 400 && statusCode <= 499) {
      return SmithyHttpClientException(statusCode, serialized.toString());
    } else if (statusCode >= 500 && statusCode <= 599) {
      return SmithyHttpServerException(statusCode, serialized.toString());
    }
    return SmithyException(serialized.toString());
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, SmithyException object,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  Iterable<Type> get types => throw UnimplementedError();

  @override
  String get wireName => 'SmithyException';
}
