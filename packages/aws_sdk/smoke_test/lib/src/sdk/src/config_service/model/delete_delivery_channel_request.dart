// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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

  static const List<_i1.SmithySerializer> serializers = [
    DeleteDeliveryChannelRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDeliveryChannelRequestBuilder b) {}

  /// The name of the delivery channel to delete.
  String get deliveryChannelName;
  @override
  DeleteDeliveryChannelRequest getPayload() => this;
  @override
  List<Object?> get props => [deliveryChannelName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteDeliveryChannelRequest');
    helper.add(
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
      switch (key) {
        case 'DeliveryChannelName':
          result.deliveryChannelName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteDeliveryChannelRequest);
    final result = <Object?>[
      'DeliveryChannelName',
      serializers.serialize(
        payload.deliveryChannelName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
