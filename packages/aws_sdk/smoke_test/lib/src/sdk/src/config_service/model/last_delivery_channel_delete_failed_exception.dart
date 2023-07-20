// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.last_delivery_channel_delete_failed_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'last_delivery_channel_delete_failed_exception.g.dart';

/// You cannot delete the delivery channel you specified because the configuration recorder is running.
abstract class LastDeliveryChannelDeleteFailedException
    with
        _i1.AWSEquatable<LastDeliveryChannelDeleteFailedException>
    implements
        Built<LastDeliveryChannelDeleteFailedException,
            LastDeliveryChannelDeleteFailedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You cannot delete the delivery channel you specified because the configuration recorder is running.
  factory LastDeliveryChannelDeleteFailedException({String? message}) {
    return _$LastDeliveryChannelDeleteFailedException._(message: message);
  }

  /// You cannot delete the delivery channel you specified because the configuration recorder is running.
  factory LastDeliveryChannelDeleteFailedException.build(
      [void Function(LastDeliveryChannelDeleteFailedExceptionBuilder)
          updates]) = _$LastDeliveryChannelDeleteFailedException;

  const LastDeliveryChannelDeleteFailedException._();

  /// Constructs a [LastDeliveryChannelDeleteFailedException] from a [payload] and [response].
  factory LastDeliveryChannelDeleteFailedException.fromResponse(
    LastDeliveryChannelDeleteFailedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<LastDeliveryChannelDeleteFailedException>>
      serializers = [
    LastDeliveryChannelDeleteFailedExceptionAwsJson11Serializer()
  ];

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'LastDeliveryChannelDeleteFailedException',
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
        newBuiltValueToStringHelper('LastDeliveryChannelDeleteFailedException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class LastDeliveryChannelDeleteFailedExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<LastDeliveryChannelDeleteFailedException> {
  const LastDeliveryChannelDeleteFailedExceptionAwsJson11Serializer()
      : super('LastDeliveryChannelDeleteFailedException');

  @override
  Iterable<Type> get types => const [
        LastDeliveryChannelDeleteFailedException,
        _$LastDeliveryChannelDeleteFailedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  LastDeliveryChannelDeleteFailedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LastDeliveryChannelDeleteFailedExceptionBuilder();
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
    LastDeliveryChannelDeleteFailedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LastDeliveryChannelDeleteFailedException(:message) = object;
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
