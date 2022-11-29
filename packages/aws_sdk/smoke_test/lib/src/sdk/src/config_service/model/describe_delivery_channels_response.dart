// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_delivery_channels_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel.dart'
    as _i2;

part 'describe_delivery_channels_response.g.dart';

/// The output for the DescribeDeliveryChannels action.
abstract class DescribeDeliveryChannelsResponse
    with
        _i1.AWSEquatable<DescribeDeliveryChannelsResponse>
    implements
        Built<DescribeDeliveryChannelsResponse,
            DescribeDeliveryChannelsResponseBuilder> {
  /// The output for the DescribeDeliveryChannels action.
  factory DescribeDeliveryChannelsResponse(
      {List<_i2.DeliveryChannel>? deliveryChannels}) {
    return _$DescribeDeliveryChannelsResponse._(
        deliveryChannels:
            deliveryChannels == null ? null : _i3.BuiltList(deliveryChannels));
  }

  /// The output for the DescribeDeliveryChannels action.
  factory DescribeDeliveryChannelsResponse.build(
          [void Function(DescribeDeliveryChannelsResponseBuilder) updates]) =
      _$DescribeDeliveryChannelsResponse;

  const DescribeDeliveryChannelsResponse._();

  /// Constructs a [DescribeDeliveryChannelsResponse] from a [payload] and [response].
  factory DescribeDeliveryChannelsResponse.fromResponse(
    DescribeDeliveryChannelsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeDeliveryChannelsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeDeliveryChannelsResponseBuilder b) {}

  /// A list that contains the descriptions of the specified delivery channel.
  _i3.BuiltList<_i2.DeliveryChannel>? get deliveryChannels;
  @override
  List<Object?> get props => [deliveryChannels];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeDeliveryChannelsResponse');
    helper.add(
      'deliveryChannels',
      deliveryChannels,
    );
    return helper.toString();
  }
}

class DescribeDeliveryChannelsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<DescribeDeliveryChannelsResponse> {
  const DescribeDeliveryChannelsResponseAwsJson11Serializer()
      : super('DescribeDeliveryChannelsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeDeliveryChannelsResponse,
        _$DescribeDeliveryChannelsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeDeliveryChannelsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDeliveryChannelsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DeliveryChannels':
          if (value != null) {
            result.deliveryChannels.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.DeliveryChannel)],
              ),
            ) as _i3.BuiltList<_i2.DeliveryChannel>));
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
    final payload = (object as DescribeDeliveryChannelsResponse);
    final result = <Object?>[];
    if (payload.deliveryChannels != null) {
      result
        ..add('DeliveryChannels')
        ..add(serializers.serialize(
          payload.deliveryChannels!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.DeliveryChannel)],
          ),
        ));
    }
    return result;
  }
}
