// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.restore_snapshot_from_recycle_bin_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'restore_snapshot_from_recycle_bin_request.g.dart';

abstract class RestoreSnapshotFromRecycleBinRequest
    with
        _i1.HttpInput<RestoreSnapshotFromRecycleBinRequest>,
        _i2.AWSEquatable<RestoreSnapshotFromRecycleBinRequest>
    implements
        Built<RestoreSnapshotFromRecycleBinRequest,
            RestoreSnapshotFromRecycleBinRequestBuilder> {
  factory RestoreSnapshotFromRecycleBinRequest({
    String? snapshotId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RestoreSnapshotFromRecycleBinRequest._(
      snapshotId: snapshotId,
      dryRun: dryRun,
    );
  }

  factory RestoreSnapshotFromRecycleBinRequest.build(
      [void Function(RestoreSnapshotFromRecycleBinRequestBuilder)
          updates]) = _$RestoreSnapshotFromRecycleBinRequest;

  const RestoreSnapshotFromRecycleBinRequest._();

  factory RestoreSnapshotFromRecycleBinRequest.fromRequest(
    RestoreSnapshotFromRecycleBinRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RestoreSnapshotFromRecycleBinRequest>>
      serializers = [RestoreSnapshotFromRecycleBinRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreSnapshotFromRecycleBinRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the snapshot to restore.
  String? get snapshotId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RestoreSnapshotFromRecycleBinRequest getPayload() => this;
  @override
  List<Object?> get props => [
        snapshotId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreSnapshotFromRecycleBinRequest')
          ..add(
            'snapshotId',
            snapshotId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class RestoreSnapshotFromRecycleBinRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<RestoreSnapshotFromRecycleBinRequest> {
  const RestoreSnapshotFromRecycleBinRequestEc2QuerySerializer()
      : super('RestoreSnapshotFromRecycleBinRequest');

  @override
  Iterable<Type> get types => const [
        RestoreSnapshotFromRecycleBinRequest,
        _$RestoreSnapshotFromRecycleBinRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreSnapshotFromRecycleBinRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreSnapshotFromRecycleBinRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreSnapshotFromRecycleBinRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RestoreSnapshotFromRecycleBinRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RestoreSnapshotFromRecycleBinRequest(:snapshotId, :dryRun) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
