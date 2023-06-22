// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.insufficient_delivery_policy_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'insufficient_delivery_policy_exception.g.dart';

/// Your Amazon S3 bucket policy does not permit Config to write to it.
abstract class InsufficientDeliveryPolicyException
    with
        _i1.AWSEquatable<InsufficientDeliveryPolicyException>
    implements
        Built<InsufficientDeliveryPolicyException,
            InsufficientDeliveryPolicyExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Your Amazon S3 bucket policy does not permit Config to write to it.
  factory InsufficientDeliveryPolicyException({String? message}) {
    return _$InsufficientDeliveryPolicyException._(message: message);
  }

  /// Your Amazon S3 bucket policy does not permit Config to write to it.
  factory InsufficientDeliveryPolicyException.build(
          [void Function(InsufficientDeliveryPolicyExceptionBuilder) updates]) =
      _$InsufficientDeliveryPolicyException;

  const InsufficientDeliveryPolicyException._();

  /// Constructs a [InsufficientDeliveryPolicyException] from a [payload] and [response].
  factory InsufficientDeliveryPolicyException.fromResponse(
    InsufficientDeliveryPolicyException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InsufficientDeliveryPolicyException>>
      serializers = [InsufficientDeliveryPolicyExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InsufficientDeliveryPolicyExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InsufficientDeliveryPolicyException',
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
        newBuiltValueToStringHelper('InsufficientDeliveryPolicyException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InsufficientDeliveryPolicyExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InsufficientDeliveryPolicyException> {
  const InsufficientDeliveryPolicyExceptionAwsJson11Serializer()
      : super('InsufficientDeliveryPolicyException');

  @override
  Iterable<Type> get types => const [
        InsufficientDeliveryPolicyException,
        _$InsufficientDeliveryPolicyException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InsufficientDeliveryPolicyException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InsufficientDeliveryPolicyExceptionBuilder();
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
    InsufficientDeliveryPolicyException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InsufficientDeliveryPolicyException(:message) = object;
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
