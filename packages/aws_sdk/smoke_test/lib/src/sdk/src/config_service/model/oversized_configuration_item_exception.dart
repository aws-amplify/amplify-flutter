// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.oversized_configuration_item_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'oversized_configuration_item_exception.g.dart';

/// The configuration item size is outside the allowable range.
abstract class OversizedConfigurationItemException
    with
        _i1.AWSEquatable<OversizedConfigurationItemException>
    implements
        Built<OversizedConfigurationItemException,
            OversizedConfigurationItemExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The configuration item size is outside the allowable range.
  factory OversizedConfigurationItemException({String? message}) {
    return _$OversizedConfigurationItemException._(message: message);
  }

  /// The configuration item size is outside the allowable range.
  factory OversizedConfigurationItemException.build(
          [void Function(OversizedConfigurationItemExceptionBuilder) updates]) =
      _$OversizedConfigurationItemException;

  const OversizedConfigurationItemException._();

  /// Constructs a [OversizedConfigurationItemException] from a [payload] and [response].
  factory OversizedConfigurationItemException.fromResponse(
    OversizedConfigurationItemException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    OversizedConfigurationItemExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OversizedConfigurationItemExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'OversizedConfigurationItemException',
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
        newBuiltValueToStringHelper('OversizedConfigurationItemException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class OversizedConfigurationItemExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<OversizedConfigurationItemException> {
  const OversizedConfigurationItemExceptionAwsJson11Serializer()
      : super('OversizedConfigurationItemException');

  @override
  Iterable<Type> get types => const [
        OversizedConfigurationItemException,
        _$OversizedConfigurationItemException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OversizedConfigurationItemException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OversizedConfigurationItemExceptionBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as OversizedConfigurationItemException);
    final result = <Object?>[];
    final OversizedConfigurationItemException(:message) = payload;
    if (message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
