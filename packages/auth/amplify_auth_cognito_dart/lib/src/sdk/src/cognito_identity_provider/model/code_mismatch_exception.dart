// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.code_mismatch_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'code_mismatch_exception.g.dart';

/// This exception is thrown if the provided code doesn't match what the server was expecting.
abstract class CodeMismatchException
    with _i1.AWSEquatable<CodeMismatchException>
    implements
        Built<CodeMismatchException, CodeMismatchExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown if the provided code doesn't match what the server was expecting.
  factory CodeMismatchException({String? message}) {
    return _$CodeMismatchException._(message: message);
  }

  /// This exception is thrown if the provided code doesn't match what the server was expecting.
  factory CodeMismatchException.build([
    void Function(CodeMismatchExceptionBuilder) updates,
  ]) = _$CodeMismatchException;

  const CodeMismatchException._();

  /// Constructs a [CodeMismatchException] from a [payload] and [response].
  factory CodeMismatchException.fromResponse(
    CodeMismatchException payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload.rebuild((b) {
    b.headers = response.headers;
  });

  static const List<_i2.SmithySerializer<CodeMismatchException>> serializers = [
    CodeMismatchExceptionAwsJson11Serializer(),
  ];

  /// The message provided when the code mismatch exception is thrown.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
    namespace: 'com.amazonaws.cognitoidentityprovider',
    shape: 'CodeMismatchException',
  );

  @override
  _i2.RetryConfig? get retryConfig => null;

  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;

  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CodeMismatchException')
      ..add('message', message);
    return helper.toString();
  }
}

class CodeMismatchExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<CodeMismatchException> {
  const CodeMismatchExceptionAwsJson11Serializer()
    : super('CodeMismatchException');

  @override
  Iterable<Type> get types => const [
    CodeMismatchException,
    _$CodeMismatchException,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  CodeMismatchException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CodeMismatchExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CodeMismatchException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CodeMismatchException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(
          serializers.serialize(message, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
