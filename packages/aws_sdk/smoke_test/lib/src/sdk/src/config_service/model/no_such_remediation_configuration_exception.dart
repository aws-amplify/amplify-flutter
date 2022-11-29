// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.no_such_remediation_configuration_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_remediation_configuration_exception.g.dart';

/// You specified an Config rule without a remediation configuration.
abstract class NoSuchRemediationConfigurationException
    with
        _i1.AWSEquatable<NoSuchRemediationConfigurationException>
    implements
        Built<NoSuchRemediationConfigurationException,
            NoSuchRemediationConfigurationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You specified an Config rule without a remediation configuration.
  factory NoSuchRemediationConfigurationException({String? message}) {
    return _$NoSuchRemediationConfigurationException._(message: message);
  }

  /// You specified an Config rule without a remediation configuration.
  factory NoSuchRemediationConfigurationException.build(
      [void Function(NoSuchRemediationConfigurationExceptionBuilder)
          updates]) = _$NoSuchRemediationConfigurationException;

  const NoSuchRemediationConfigurationException._();

  /// Constructs a [NoSuchRemediationConfigurationException] from a [payload] and [response].
  factory NoSuchRemediationConfigurationException.fromResponse(
    NoSuchRemediationConfigurationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NoSuchRemediationConfigurationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchRemediationConfigurationExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchRemediationConfigurationException',
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
        newBuiltValueToStringHelper('NoSuchRemediationConfigurationException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class NoSuchRemediationConfigurationExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoSuchRemediationConfigurationException> {
  const NoSuchRemediationConfigurationExceptionAwsJson11Serializer()
      : super('NoSuchRemediationConfigurationException');

  @override
  Iterable<Type> get types => const [
        NoSuchRemediationConfigurationException,
        _$NoSuchRemediationConfigurationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchRemediationConfigurationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchRemediationConfigurationExceptionBuilder();
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
    final payload = (object as NoSuchRemediationConfigurationException);
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
