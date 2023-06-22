// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.max_number_of_delivery_channels_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_delivery_channels_exceeded_exception.g.dart';

/// You have reached the limit of the number of delivery channels you can create.
abstract class MaxNumberOfDeliveryChannelsExceededException
    with
        _i1.AWSEquatable<MaxNumberOfDeliveryChannelsExceededException>
    implements
        Built<MaxNumberOfDeliveryChannelsExceededException,
            MaxNumberOfDeliveryChannelsExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit of the number of delivery channels you can create.
  factory MaxNumberOfDeliveryChannelsExceededException({String? message}) {
    return _$MaxNumberOfDeliveryChannelsExceededException._(message: message);
  }

  /// You have reached the limit of the number of delivery channels you can create.
  factory MaxNumberOfDeliveryChannelsExceededException.build(
      [void Function(MaxNumberOfDeliveryChannelsExceededExceptionBuilder)
          updates]) = _$MaxNumberOfDeliveryChannelsExceededException;

  const MaxNumberOfDeliveryChannelsExceededException._();

  /// Constructs a [MaxNumberOfDeliveryChannelsExceededException] from a [payload] and [response].
  factory MaxNumberOfDeliveryChannelsExceededException.fromResponse(
    MaxNumberOfDeliveryChannelsExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<MaxNumberOfDeliveryChannelsExceededException>>
      serializers = [
    MaxNumberOfDeliveryChannelsExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MaxNumberOfDeliveryChannelsExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfDeliveryChannelsExceededException',
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
        'MaxNumberOfDeliveryChannelsExceededException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class MaxNumberOfDeliveryChannelsExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOfDeliveryChannelsExceededException> {
  const MaxNumberOfDeliveryChannelsExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfDeliveryChannelsExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfDeliveryChannelsExceededException,
        _$MaxNumberOfDeliveryChannelsExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfDeliveryChannelsExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOfDeliveryChannelsExceededExceptionBuilder();
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
    MaxNumberOfDeliveryChannelsExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MaxNumberOfDeliveryChannelsExceededException(:message) = object;
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
