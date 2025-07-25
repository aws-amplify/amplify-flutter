// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_json1_1_v1.machine_learning.model.invalid_input_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_input_exception.g.dart';

abstract class InvalidInputException
    with _i1.AWSEquatable<InvalidInputException>
    implements
        Built<InvalidInputException, InvalidInputExceptionBuilder>,
        _i2.SmithyHttpException {
  factory InvalidInputException({String? message, int? code}) {
    return _$InvalidInputException._(message: message, code: code);
  }

  factory InvalidInputException.build([
    void Function(InvalidInputExceptionBuilder) updates,
  ]) = _$InvalidInputException;

  const InvalidInputException._();

  /// Constructs a [InvalidInputException] from a [payload] and [response].
  factory InvalidInputException.fromResponse(
    InvalidInputException payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload.rebuild((b) {
    b.headers = response.headers;
  });

  static const List<_i2.SmithySerializer<InvalidInputException>> serializers = [
    InvalidInputExceptionAwsJson11Serializer(),
  ];

  @override
  String? get message;
  int? get code;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
    namespace: 'com.amazonaws.machinelearning',
    shape: 'InvalidInputException',
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
  List<Object?> get props => [message, code];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidInputException')
      ..add('message', message)
      ..add('code', code);
    return helper.toString();
  }
}

class InvalidInputExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidInputException> {
  const InvalidInputExceptionAwsJson11Serializer()
    : super('InvalidInputException');

  @override
  Iterable<Type> get types => const [
    InvalidInputException,
    _$InvalidInputException,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  InvalidInputException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidInputExceptionBuilder();
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
        case 'code':
          result.code =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidInputException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidInputException(:message, :code) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(
          serializers.serialize(message, specifiedType: const FullType(String)),
        );
    }
    if (code != null) {
      result$
        ..add('code')
        ..add(serializers.serialize(code, specifiedType: const FullType(int)));
    }
    return result$;
  }
}
