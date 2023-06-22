// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.deliver_config_snapshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deliver_config_snapshot_request.g.dart';

/// The input for the DeliverConfigSnapshot action.
abstract class DeliverConfigSnapshotRequest
    with
        _i1.HttpInput<DeliverConfigSnapshotRequest>,
        _i2.AWSEquatable<DeliverConfigSnapshotRequest>
    implements
        Built<DeliverConfigSnapshotRequest,
            DeliverConfigSnapshotRequestBuilder> {
  /// The input for the DeliverConfigSnapshot action.
  factory DeliverConfigSnapshotRequest({required String deliveryChannelName}) {
    return _$DeliverConfigSnapshotRequest._(
        deliveryChannelName: deliveryChannelName);
  }

  /// The input for the DeliverConfigSnapshot action.
  factory DeliverConfigSnapshotRequest.build(
          [void Function(DeliverConfigSnapshotRequestBuilder) updates]) =
      _$DeliverConfigSnapshotRequest;

  const DeliverConfigSnapshotRequest._();

  factory DeliverConfigSnapshotRequest.fromRequest(
    DeliverConfigSnapshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeliverConfigSnapshotRequest>>
      serializers = [DeliverConfigSnapshotRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeliverConfigSnapshotRequestBuilder b) {}

  /// The name of the delivery channel through which the snapshot is delivered.
  String get deliveryChannelName;
  @override
  DeliverConfigSnapshotRequest getPayload() => this;
  @override
  List<Object?> get props => [deliveryChannelName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeliverConfigSnapshotRequest')
      ..add(
        'deliveryChannelName',
        deliveryChannelName,
      );
    return helper.toString();
  }
}

class DeliverConfigSnapshotRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeliverConfigSnapshotRequest> {
  const DeliverConfigSnapshotRequestAwsJson11Serializer()
      : super('DeliverConfigSnapshotRequest');

  @override
  Iterable<Type> get types => const [
        DeliverConfigSnapshotRequest,
        _$DeliverConfigSnapshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeliverConfigSnapshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverConfigSnapshotRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deliveryChannelName':
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
    DeliverConfigSnapshotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeliverConfigSnapshotRequest(:deliveryChannelName) = object;
    result$.addAll([
      'deliveryChannelName',
      serializers.serialize(
        deliveryChannelName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
