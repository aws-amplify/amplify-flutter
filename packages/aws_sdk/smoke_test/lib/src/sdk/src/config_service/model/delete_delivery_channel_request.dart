// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.delete_delivery_channel_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_delivery_channel_request.g.dart';

/// The input for the DeleteDeliveryChannel action. The action accepts the following data, in JSON format.
abstract class DeleteDeliveryChannelRequest
    with
        _i1.HttpInput<DeleteDeliveryChannelRequest>,
        _i2.AWSEquatable<DeleteDeliveryChannelRequest>
    implements
        Built<DeleteDeliveryChannelRequest,
            DeleteDeliveryChannelRequestBuilder> {
  /// The input for the DeleteDeliveryChannel action. The action accepts the following data, in JSON format.
  factory DeleteDeliveryChannelRequest({required String deliveryChannelName}) {
    return _$DeleteDeliveryChannelRequest._(
        deliveryChannelName: deliveryChannelName);
  }

  /// The input for the DeleteDeliveryChannel action. The action accepts the following data, in JSON format.
  factory DeleteDeliveryChannelRequest.build(
          [void Function(DeleteDeliveryChannelRequestBuilder) updates]) =
      _$DeleteDeliveryChannelRequest;

  const DeleteDeliveryChannelRequest._();

  factory DeleteDeliveryChannelRequest.fromRequest(
    DeleteDeliveryChannelRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteDeliveryChannelRequest>>
      serializers = [DeleteDeliveryChannelRequestAwsJson11Serializer()];

  /// The name of the delivery channel to delete.
  String get deliveryChannelName;
  @override
  DeleteDeliveryChannelRequest getPayload() => this;
  @override
  List<Object?> get props => [deliveryChannelName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteDeliveryChannelRequest')
      ..add(
        'deliveryChannelName',
        deliveryChannelName,
      );
    return helper.toString();
  }
}

class DeleteDeliveryChannelRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteDeliveryChannelRequest> {
  const DeleteDeliveryChannelRequestAwsJson11Serializer()
      : super('DeleteDeliveryChannelRequest');

  @override
  Iterable<Type> get types => const [
        DeleteDeliveryChannelRequest,
        _$DeleteDeliveryChannelRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteDeliveryChannelRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteDeliveryChannelRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryChannelName':
          result.deliveryChannelName = (serializers.deserialize(
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
    DeleteDeliveryChannelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteDeliveryChannelRequest(:deliveryChannelName) = object;
    result$.addAll([
      'DeliveryChannelName',
      serializers.serialize(
        deliveryChannelName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
