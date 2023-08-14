// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_delivery_channels_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel.dart';

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
      {List<DeliveryChannel>? deliveryChannels}) {
    return _$DescribeDeliveryChannelsResponse._(
        deliveryChannels:
            deliveryChannels == null ? null : _i2.BuiltList(deliveryChannels));
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

  static const List<_i3.SmithySerializer<DescribeDeliveryChannelsResponse>>
      serializers = [DescribeDeliveryChannelsResponseAwsJson11Serializer()];

  /// A list that contains the descriptions of the specified delivery channel.
  _i2.BuiltList<DeliveryChannel>? get deliveryChannels;
  @override
  List<Object?> get props => [deliveryChannels];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeDeliveryChannelsResponse')
          ..add(
            'deliveryChannels',
            deliveryChannels,
          );
    return helper.toString();
  }
}

class DescribeDeliveryChannelsResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<DescribeDeliveryChannelsResponse> {
  const DescribeDeliveryChannelsResponseAwsJson11Serializer()
      : super('DescribeDeliveryChannelsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeDeliveryChannelsResponse,
        _$DescribeDeliveryChannelsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryChannels':
          result.deliveryChannels.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DeliveryChannel)],
            ),
          ) as _i2.BuiltList<DeliveryChannel>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeDeliveryChannelsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeDeliveryChannelsResponse(:deliveryChannels) = object;
    if (deliveryChannels != null) {
      result$
        ..add('DeliveryChannels')
        ..add(serializers.serialize(
          deliveryChannels,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DeliveryChannel)],
          ),
        ));
    }
    return result$;
  }
}
