// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_delivery_channels_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_delivery_channels_request.g.dart';

/// The input for the DescribeDeliveryChannels action.
abstract class DescribeDeliveryChannelsRequest
    with
        _i1.HttpInput<DescribeDeliveryChannelsRequest>,
        _i2.AWSEquatable<DescribeDeliveryChannelsRequest>
    implements
        Built<DescribeDeliveryChannelsRequest,
            DescribeDeliveryChannelsRequestBuilder> {
  /// The input for the DescribeDeliveryChannels action.
  factory DescribeDeliveryChannelsRequest(
      {List<String>? deliveryChannelNames}) {
    return _$DescribeDeliveryChannelsRequest._(
        deliveryChannelNames: deliveryChannelNames == null
            ? null
            : _i3.BuiltList(deliveryChannelNames));
  }

  /// The input for the DescribeDeliveryChannels action.
  factory DescribeDeliveryChannelsRequest.build(
          [void Function(DescribeDeliveryChannelsRequestBuilder) updates]) =
      _$DescribeDeliveryChannelsRequest;

  const DescribeDeliveryChannelsRequest._();

  factory DescribeDeliveryChannelsRequest.fromRequest(
    DescribeDeliveryChannelsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeDeliveryChannelsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeDeliveryChannelsRequestBuilder b) {}

  /// A list of delivery channel names.
  _i3.BuiltList<String>? get deliveryChannelNames;
  @override
  DescribeDeliveryChannelsRequest getPayload() => this;
  @override
  List<Object?> get props => [deliveryChannelNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeDeliveryChannelsRequest');
    helper.add(
      'deliveryChannelNames',
      deliveryChannelNames,
    );
    return helper.toString();
  }
}

class DescribeDeliveryChannelsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DescribeDeliveryChannelsRequest> {
  const DescribeDeliveryChannelsRequestAwsJson11Serializer()
      : super('DescribeDeliveryChannelsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeDeliveryChannelsRequest,
        _$DescribeDeliveryChannelsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeDeliveryChannelsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDeliveryChannelsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DeliveryChannelNames':
          if (value != null) {
            result.deliveryChannelNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as DescribeDeliveryChannelsRequest);
    final result = <Object?>[];
    if (payload.deliveryChannelNames != null) {
      result
        ..add('DeliveryChannelNames')
        ..add(serializers.serialize(
          payload.deliveryChannelNames!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
