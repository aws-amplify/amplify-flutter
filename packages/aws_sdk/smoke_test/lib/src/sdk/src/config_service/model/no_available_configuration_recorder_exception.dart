// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.no_available_configuration_recorder_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_available_configuration_recorder_exception.g.dart';

/// There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.
abstract class NoAvailableConfigurationRecorderException
    with
        _i1.AWSEquatable<NoAvailableConfigurationRecorderException>
    implements
        Built<NoAvailableConfigurationRecorderException,
            NoAvailableConfigurationRecorderExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.
  factory NoAvailableConfigurationRecorderException({String? message}) {
    return _$NoAvailableConfigurationRecorderException._(message: message);
  }

  /// There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.
  factory NoAvailableConfigurationRecorderException.build(
      [void Function(NoAvailableConfigurationRecorderExceptionBuilder)
          updates]) = _$NoAvailableConfigurationRecorderException;

  const NoAvailableConfigurationRecorderException._();

  /// Constructs a [NoAvailableConfigurationRecorderException] from a [payload] and [response].
  factory NoAvailableConfigurationRecorderException.fromResponse(
    NoAvailableConfigurationRecorderException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<NoAvailableConfigurationRecorderException>>
      serializers = [
    NoAvailableConfigurationRecorderExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoAvailableConfigurationRecorderExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoAvailableConfigurationRecorderException',
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
        newBuiltValueToStringHelper('NoAvailableConfigurationRecorderException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class NoAvailableConfigurationRecorderExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoAvailableConfigurationRecorderException> {
  const NoAvailableConfigurationRecorderExceptionAwsJson11Serializer()
      : super('NoAvailableConfigurationRecorderException');

  @override
  Iterable<Type> get types => const [
        NoAvailableConfigurationRecorderException,
        _$NoAvailableConfigurationRecorderException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoAvailableConfigurationRecorderException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoAvailableConfigurationRecorderExceptionBuilder();
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
    NoAvailableConfigurationRecorderException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NoAvailableConfigurationRecorderException(:message) = object;
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
