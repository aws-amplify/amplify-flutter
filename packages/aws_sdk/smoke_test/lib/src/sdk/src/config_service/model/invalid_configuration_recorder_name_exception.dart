// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_configuration_recorder_name_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_configuration_recorder_name_exception.g.dart';

/// You have provided a configuration recorder name that is not valid.
abstract class InvalidConfigurationRecorderNameException
    with
        _i1.AWSEquatable<InvalidConfigurationRecorderNameException>
    implements
        Built<InvalidConfigurationRecorderNameException,
            InvalidConfigurationRecorderNameExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have provided a configuration recorder name that is not valid.
  factory InvalidConfigurationRecorderNameException({String? message}) {
    return _$InvalidConfigurationRecorderNameException._(message: message);
  }

  /// You have provided a configuration recorder name that is not valid.
  factory InvalidConfigurationRecorderNameException.build(
      [void Function(InvalidConfigurationRecorderNameExceptionBuilder)
          updates]) = _$InvalidConfigurationRecorderNameException;

  const InvalidConfigurationRecorderNameException._();

  /// Constructs a [InvalidConfigurationRecorderNameException] from a [payload] and [response].
  factory InvalidConfigurationRecorderNameException.fromResponse(
    InvalidConfigurationRecorderNameException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidConfigurationRecorderNameExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidConfigurationRecorderNameExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidConfigurationRecorderNameException',
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
    final helper = newBuiltValueToStringHelper(
        'InvalidConfigurationRecorderNameException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidConfigurationRecorderNameExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidConfigurationRecorderNameException> {
  const InvalidConfigurationRecorderNameExceptionAwsJson11Serializer()
      : super('InvalidConfigurationRecorderNameException');

  @override
  Iterable<Type> get types => const [
        InvalidConfigurationRecorderNameException,
        _$InvalidConfigurationRecorderNameException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidConfigurationRecorderNameException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidConfigurationRecorderNameExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as InvalidConfigurationRecorderNameException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
