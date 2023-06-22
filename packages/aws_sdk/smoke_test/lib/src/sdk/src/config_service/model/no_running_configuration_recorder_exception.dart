// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.no_running_configuration_recorder_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_running_configuration_recorder_exception.g.dart';

/// There is no configuration recorder running.
abstract class NoRunningConfigurationRecorderException
    with
        _i1.AWSEquatable<NoRunningConfigurationRecorderException>
    implements
        Built<NoRunningConfigurationRecorderException,
            NoRunningConfigurationRecorderExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There is no configuration recorder running.
  factory NoRunningConfigurationRecorderException({String? message}) {
    return _$NoRunningConfigurationRecorderException._(message: message);
  }

  /// There is no configuration recorder running.
  factory NoRunningConfigurationRecorderException.build(
      [void Function(NoRunningConfigurationRecorderExceptionBuilder)
          updates]) = _$NoRunningConfigurationRecorderException;

  const NoRunningConfigurationRecorderException._();

  /// Constructs a [NoRunningConfigurationRecorderException] from a [payload] and [response].
  factory NoRunningConfigurationRecorderException.fromResponse(
    NoRunningConfigurationRecorderException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<NoRunningConfigurationRecorderException>>
      serializers = [
    NoRunningConfigurationRecorderExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoRunningConfigurationRecorderExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoRunningConfigurationRecorderException',
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
        newBuiltValueToStringHelper('NoRunningConfigurationRecorderException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class NoRunningConfigurationRecorderExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoRunningConfigurationRecorderException> {
  const NoRunningConfigurationRecorderExceptionAwsJson11Serializer()
      : super('NoRunningConfigurationRecorderException');

  @override
  Iterable<Type> get types => const [
        NoRunningConfigurationRecorderException,
        _$NoRunningConfigurationRecorderException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoRunningConfigurationRecorderException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoRunningConfigurationRecorderExceptionBuilder();
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
    NoRunningConfigurationRecorderException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NoRunningConfigurationRecorderException(:message) = object;
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
