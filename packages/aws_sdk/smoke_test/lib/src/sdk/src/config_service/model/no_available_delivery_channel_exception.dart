// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.no_available_delivery_channel_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_available_delivery_channel_exception.g.dart';

/// There is no delivery channel available to record configurations.
abstract class NoAvailableDeliveryChannelException
    with
        _i1.AWSEquatable<NoAvailableDeliveryChannelException>
    implements
        Built<NoAvailableDeliveryChannelException,
            NoAvailableDeliveryChannelExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There is no delivery channel available to record configurations.
  factory NoAvailableDeliveryChannelException({String? message}) {
    return _$NoAvailableDeliveryChannelException._(message: message);
  }

  /// There is no delivery channel available to record configurations.
  factory NoAvailableDeliveryChannelException.build(
          [void Function(NoAvailableDeliveryChannelExceptionBuilder) updates]) =
      _$NoAvailableDeliveryChannelException;

  const NoAvailableDeliveryChannelException._();

  /// Constructs a [NoAvailableDeliveryChannelException] from a [payload] and [response].
  factory NoAvailableDeliveryChannelException.fromResponse(
    NoAvailableDeliveryChannelException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NoAvailableDeliveryChannelExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoAvailableDeliveryChannelExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoAvailableDeliveryChannelException',
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
        newBuiltValueToStringHelper('NoAvailableDeliveryChannelException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class NoAvailableDeliveryChannelExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoAvailableDeliveryChannelException> {
  const NoAvailableDeliveryChannelExceptionAwsJson11Serializer()
      : super('NoAvailableDeliveryChannelException');

  @override
  Iterable<Type> get types => const [
        NoAvailableDeliveryChannelException,
        _$NoAvailableDeliveryChannelException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoAvailableDeliveryChannelException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoAvailableDeliveryChannelExceptionBuilder();
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
    final payload = (object as NoAvailableDeliveryChannelException);
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
