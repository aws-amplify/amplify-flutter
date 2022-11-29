// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_delivery_channel_name_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_delivery_channel_name_exception.g.dart';

/// The specified delivery channel name is not valid.
abstract class InvalidDeliveryChannelNameException
    with
        _i1.AWSEquatable<InvalidDeliveryChannelNameException>
    implements
        Built<InvalidDeliveryChannelNameException,
            InvalidDeliveryChannelNameExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified delivery channel name is not valid.
  factory InvalidDeliveryChannelNameException({String? message}) {
    return _$InvalidDeliveryChannelNameException._(message: message);
  }

  /// The specified delivery channel name is not valid.
  factory InvalidDeliveryChannelNameException.build(
          [void Function(InvalidDeliveryChannelNameExceptionBuilder) updates]) =
      _$InvalidDeliveryChannelNameException;

  const InvalidDeliveryChannelNameException._();

  /// Constructs a [InvalidDeliveryChannelNameException] from a [payload] and [response].
  factory InvalidDeliveryChannelNameException.fromResponse(
    InvalidDeliveryChannelNameException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidDeliveryChannelNameExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidDeliveryChannelNameExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidDeliveryChannelNameException',
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
        newBuiltValueToStringHelper('InvalidDeliveryChannelNameException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidDeliveryChannelNameExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidDeliveryChannelNameException> {
  const InvalidDeliveryChannelNameExceptionAwsJson11Serializer()
      : super('InvalidDeliveryChannelNameException');

  @override
  Iterable<Type> get types => const [
        InvalidDeliveryChannelNameException,
        _$InvalidDeliveryChannelNameException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidDeliveryChannelNameException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidDeliveryChannelNameExceptionBuilder();
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
    final payload = (object as InvalidDeliveryChannelNameException);
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
