// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.no_such_configuration_recorder_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_configuration_recorder_exception.g.dart';

/// You have specified a configuration recorder that does not exist.
abstract class NoSuchConfigurationRecorderException
    with
        _i1.AWSEquatable<NoSuchConfigurationRecorderException>
    implements
        Built<NoSuchConfigurationRecorderException,
            NoSuchConfigurationRecorderExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have specified a configuration recorder that does not exist.
  factory NoSuchConfigurationRecorderException({String? message}) {
    return _$NoSuchConfigurationRecorderException._(message: message);
  }

  /// You have specified a configuration recorder that does not exist.
  factory NoSuchConfigurationRecorderException.build(
      [void Function(NoSuchConfigurationRecorderExceptionBuilder)
          updates]) = _$NoSuchConfigurationRecorderException;

  const NoSuchConfigurationRecorderException._();

  /// Constructs a [NoSuchConfigurationRecorderException] from a [payload] and [response].
  factory NoSuchConfigurationRecorderException.fromResponse(
    NoSuchConfigurationRecorderException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<NoSuchConfigurationRecorderException>>
      serializers = [NoSuchConfigurationRecorderExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchConfigurationRecorderExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchConfigurationRecorderException',
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
    final helper =
        newBuiltValueToStringHelper('NoSuchConfigurationRecorderException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class NoSuchConfigurationRecorderExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoSuchConfigurationRecorderException> {
  const NoSuchConfigurationRecorderExceptionAwsJson11Serializer()
      : super('NoSuchConfigurationRecorderException');

  @override
  Iterable<Type> get types => const [
        NoSuchConfigurationRecorderException,
        _$NoSuchConfigurationRecorderException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchConfigurationRecorderException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchConfigurationRecorderExceptionBuilder();
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
    NoSuchConfigurationRecorderException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NoSuchConfigurationRecorderException(:message) = object;
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
