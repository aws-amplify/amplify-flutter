// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.invalid_parameter_value_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_parameter_value_exception.g.dart';

/// One or more of the specified parameters are not valid. Verify that your parameters are valid and try again.
abstract class InvalidParameterValueException
    with
        _i1.AWSEquatable<InvalidParameterValueException>
    implements
        Built<InvalidParameterValueException,
            InvalidParameterValueExceptionBuilder>,
        _i2.SmithyHttpException {
  /// One or more of the specified parameters are not valid. Verify that your parameters are valid and try again.
  factory InvalidParameterValueException({String? message}) {
    return _$InvalidParameterValueException._(message: message);
  }

  /// One or more of the specified parameters are not valid. Verify that your parameters are valid and try again.
  factory InvalidParameterValueException.build(
          [void Function(InvalidParameterValueExceptionBuilder) updates]) =
      _$InvalidParameterValueException;

  const InvalidParameterValueException._();

  /// Constructs a [InvalidParameterValueException] from a [payload] and [response].
  factory InvalidParameterValueException.fromResponse(
    InvalidParameterValueException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidParameterValueException>>
      serializers = [InvalidParameterValueExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidParameterValueExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidParameterValueException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidParameterValueException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidParameterValueExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidParameterValueException> {
  const InvalidParameterValueExceptionAwsJson11Serializer()
      : super('InvalidParameterValueException');

  @override
  Iterable<Type> get types => const [
        InvalidParameterValueException,
        _$InvalidParameterValueException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidParameterValueException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidParameterValueExceptionBuilder();
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
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidParameterValueException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidParameterValueException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
