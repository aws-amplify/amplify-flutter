// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.glacier.model.invalid_parameter_value_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_parameter_value_exception.g.dart';

abstract class InvalidParameterValueException
    with
        _i1.AWSEquatable<InvalidParameterValueException>
    implements
        Built<InvalidParameterValueException,
            InvalidParameterValueExceptionBuilder>,
        _i2.SmithyHttpException {
  factory InvalidParameterValueException({
    String? type,
    String? code,
    String? message,
  }) {
    return _$InvalidParameterValueException._(
      type: type,
      code: code,
      message: message,
    );
  }

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
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidParameterValueException>>
      serializers = [InvalidParameterValueExceptionRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidParameterValueExceptionBuilder b) {}
  String? get type;
  String? get code;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.glacier',
        shape: 'InvalidParameterValueException',
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
  List<Object?> get props => [
        type,
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidParameterValueException')
      ..add(
        'type',
        type,
      )
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidParameterValueExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<InvalidParameterValueException> {
  const InvalidParameterValueExceptionRestJson1Serializer()
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
          shape: 'restJson1',
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
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
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
    final InvalidParameterValueException(:code, :message, :type) = object;
    if (code != null) {
      result$
        ..add('code')
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add('type')
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
