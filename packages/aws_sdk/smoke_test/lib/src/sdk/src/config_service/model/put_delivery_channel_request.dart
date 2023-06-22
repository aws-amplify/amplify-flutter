// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_delivery_channel_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel.dart'
    as _i3;

part 'put_delivery_channel_request.g.dart';

/// The input for the PutDeliveryChannel action.
abstract class PutDeliveryChannelRequest
    with
        _i1.HttpInput<PutDeliveryChannelRequest>,
        _i2.AWSEquatable<PutDeliveryChannelRequest>
    implements
        Built<PutDeliveryChannelRequest, PutDeliveryChannelRequestBuilder> {
  /// The input for the PutDeliveryChannel action.
  factory PutDeliveryChannelRequest(
      {required _i3.DeliveryChannel deliveryChannel}) {
    return _$PutDeliveryChannelRequest._(deliveryChannel: deliveryChannel);
  }

  /// The input for the PutDeliveryChannel action.
  factory PutDeliveryChannelRequest.build(
          [void Function(PutDeliveryChannelRequestBuilder) updates]) =
      _$PutDeliveryChannelRequest;

  const PutDeliveryChannelRequest._();

  factory PutDeliveryChannelRequest.fromRequest(
    PutDeliveryChannelRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutDeliveryChannelRequest>>
      serializers = [PutDeliveryChannelRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutDeliveryChannelRequestBuilder b) {}

  /// The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket and to an Amazon SNS topic.
  _i3.DeliveryChannel get deliveryChannel;
  @override
  PutDeliveryChannelRequest getPayload() => this;
  @override
  List<Object?> get props => [deliveryChannel];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutDeliveryChannelRequest')
      ..add(
        'deliveryChannel',
        deliveryChannel,
      );
    return helper.toString();
  }
}

class PutDeliveryChannelRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutDeliveryChannelRequest> {
  const PutDeliveryChannelRequestAwsJson11Serializer()
      : super('PutDeliveryChannelRequest');

  @override
  Iterable<Type> get types => const [
        PutDeliveryChannelRequest,
        _$PutDeliveryChannelRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutDeliveryChannelRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutDeliveryChannelRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryChannel':
          result.deliveryChannel.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeliveryChannel),
          ) as _i3.DeliveryChannel));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutDeliveryChannelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutDeliveryChannelRequest(:deliveryChannel) = object;
    result$.addAll([
      'DeliveryChannel',
      serializers.serialize(
        deliveryChannel,
        specifiedType: const FullType(_i3.DeliveryChannel),
      ),
    ]);
    return result$;
  }
}
