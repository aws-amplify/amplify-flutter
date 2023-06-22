// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_delivery_channel_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_channel_status.dart'
    as _i2;

part 'describe_delivery_channel_status_response.g.dart';

/// The output for the DescribeDeliveryChannelStatus action.
abstract class DescribeDeliveryChannelStatusResponse
    with
        _i1.AWSEquatable<DescribeDeliveryChannelStatusResponse>
    implements
        Built<DescribeDeliveryChannelStatusResponse,
            DescribeDeliveryChannelStatusResponseBuilder> {
  /// The output for the DescribeDeliveryChannelStatus action.
  factory DescribeDeliveryChannelStatusResponse(
      {List<_i2.DeliveryChannelStatus>? deliveryChannelsStatus}) {
    return _$DescribeDeliveryChannelStatusResponse._(
        deliveryChannelsStatus: deliveryChannelsStatus == null
            ? null
            : _i3.BuiltList(deliveryChannelsStatus));
  }

  /// The output for the DescribeDeliveryChannelStatus action.
  factory DescribeDeliveryChannelStatusResponse.build(
      [void Function(DescribeDeliveryChannelStatusResponseBuilder)
          updates]) = _$DescribeDeliveryChannelStatusResponse;

  const DescribeDeliveryChannelStatusResponse._();

  /// Constructs a [DescribeDeliveryChannelStatusResponse] from a [payload] and [response].
  factory DescribeDeliveryChannelStatusResponse.fromResponse(
    DescribeDeliveryChannelStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribeDeliveryChannelStatusResponse>>
      serializers = [
    DescribeDeliveryChannelStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeDeliveryChannelStatusResponseBuilder b) {}

  /// A list that contains the status of a specified delivery channel.
  _i3.BuiltList<_i2.DeliveryChannelStatus>? get deliveryChannelsStatus;
  @override
  List<Object?> get props => [deliveryChannelsStatus];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeDeliveryChannelStatusResponse')
          ..add(
            'deliveryChannelsStatus',
            deliveryChannelsStatus,
          );
    return helper.toString();
  }
}

class DescribeDeliveryChannelStatusResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeDeliveryChannelStatusResponse> {
  const DescribeDeliveryChannelStatusResponseAwsJson11Serializer()
      : super('DescribeDeliveryChannelStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeDeliveryChannelStatusResponse,
        _$DescribeDeliveryChannelStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeDeliveryChannelStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDeliveryChannelStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryChannelsStatus':
          result.deliveryChannelsStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.DeliveryChannelStatus)],
            ),
          ) as _i3.BuiltList<_i2.DeliveryChannelStatus>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeDeliveryChannelStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeDeliveryChannelStatusResponse(:deliveryChannelsStatus) =
        object;
    if (deliveryChannelsStatus != null) {
      result$
        ..add('DeliveryChannelsStatus')
        ..add(serializers.serialize(
          deliveryChannelsStatus,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.DeliveryChannelStatus)],
          ),
        ));
    }
    return result$;
  }
}
