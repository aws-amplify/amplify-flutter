// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_delivery_channel_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_delivery_channel_status_request.g.dart';

/// The input for the DeliveryChannelStatus action.
abstract class DescribeDeliveryChannelStatusRequest
    with
        _i1.HttpInput<DescribeDeliveryChannelStatusRequest>,
        _i2.AWSEquatable<DescribeDeliveryChannelStatusRequest>
    implements
        Built<DescribeDeliveryChannelStatusRequest,
            DescribeDeliveryChannelStatusRequestBuilder> {
  /// The input for the DeliveryChannelStatus action.
  factory DescribeDeliveryChannelStatusRequest(
      {List<String>? deliveryChannelNames}) {
    return _$DescribeDeliveryChannelStatusRequest._(
        deliveryChannelNames: deliveryChannelNames == null
            ? null
            : _i3.BuiltList(deliveryChannelNames));
  }

  /// The input for the DeliveryChannelStatus action.
  factory DescribeDeliveryChannelStatusRequest.build(
      [void Function(DescribeDeliveryChannelStatusRequestBuilder)
          updates]) = _$DescribeDeliveryChannelStatusRequest;

  const DescribeDeliveryChannelStatusRequest._();

  factory DescribeDeliveryChannelStatusRequest.fromRequest(
    DescribeDeliveryChannelStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeDeliveryChannelStatusRequest>>
      serializers = [DescribeDeliveryChannelStatusRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeDeliveryChannelStatusRequestBuilder b) {}

  /// A list of delivery channel names.
  _i3.BuiltList<String>? get deliveryChannelNames;
  @override
  DescribeDeliveryChannelStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [deliveryChannelNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeDeliveryChannelStatusRequest')
          ..add(
            'deliveryChannelNames',
            deliveryChannelNames,
          );
    return helper.toString();
  }
}

class DescribeDeliveryChannelStatusRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeDeliveryChannelStatusRequest> {
  const DescribeDeliveryChannelStatusRequestAwsJson11Serializer()
      : super('DescribeDeliveryChannelStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeDeliveryChannelStatusRequest,
        _$DescribeDeliveryChannelStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeDeliveryChannelStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDeliveryChannelStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryChannelNames':
          result.deliveryChannelNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeDeliveryChannelStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeDeliveryChannelStatusRequest(:deliveryChannelNames) = object;
    if (deliveryChannelNames != null) {
      result$
        ..add('DeliveryChannelNames')
        ..add(serializers.serialize(
          deliveryChannelNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
