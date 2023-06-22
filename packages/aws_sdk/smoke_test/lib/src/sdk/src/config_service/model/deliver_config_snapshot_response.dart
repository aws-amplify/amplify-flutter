// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.deliver_config_snapshot_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'deliver_config_snapshot_response.g.dart';

/// The output for the DeliverConfigSnapshot action, in JSON format.
abstract class DeliverConfigSnapshotResponse
    with
        _i1.AWSEquatable<DeliverConfigSnapshotResponse>
    implements
        Built<DeliverConfigSnapshotResponse,
            DeliverConfigSnapshotResponseBuilder> {
  /// The output for the DeliverConfigSnapshot action, in JSON format.
  factory DeliverConfigSnapshotResponse({String? configSnapshotId}) {
    return _$DeliverConfigSnapshotResponse._(
        configSnapshotId: configSnapshotId);
  }

  /// The output for the DeliverConfigSnapshot action, in JSON format.
  factory DeliverConfigSnapshotResponse.build(
          [void Function(DeliverConfigSnapshotResponseBuilder) updates]) =
      _$DeliverConfigSnapshotResponse;

  const DeliverConfigSnapshotResponse._();

  /// Constructs a [DeliverConfigSnapshotResponse] from a [payload] and [response].
  factory DeliverConfigSnapshotResponse.fromResponse(
    DeliverConfigSnapshotResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeliverConfigSnapshotResponse>>
      serializers = [DeliverConfigSnapshotResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeliverConfigSnapshotResponseBuilder b) {}

  /// The ID of the snapshot that is being created.
  String? get configSnapshotId;
  @override
  List<Object?> get props => [configSnapshotId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeliverConfigSnapshotResponse')
      ..add(
        'configSnapshotId',
        configSnapshotId,
      );
    return helper.toString();
  }
}

class DeliverConfigSnapshotResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<DeliverConfigSnapshotResponse> {
  const DeliverConfigSnapshotResponseAwsJson11Serializer()
      : super('DeliverConfigSnapshotResponse');

  @override
  Iterable<Type> get types => const [
        DeliverConfigSnapshotResponse,
        _$DeliverConfigSnapshotResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeliverConfigSnapshotResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverConfigSnapshotResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'configSnapshotId':
          result.configSnapshotId = (serializers.deserialize(
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
    DeliverConfigSnapshotResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeliverConfigSnapshotResponse(:configSnapshotId) = object;
    if (configSnapshotId != null) {
      result$
        ..add('configSnapshotId')
        ..add(serializers.serialize(
          configSnapshotId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
