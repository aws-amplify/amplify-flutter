// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_fast_snapshot_restores_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_fast_snapshot_restores_request.g.dart';

abstract class DisableFastSnapshotRestoresRequest
    with
        _i1.HttpInput<DisableFastSnapshotRestoresRequest>,
        _i2.AWSEquatable<DisableFastSnapshotRestoresRequest>
    implements
        Built<DisableFastSnapshotRestoresRequest,
            DisableFastSnapshotRestoresRequestBuilder> {
  factory DisableFastSnapshotRestoresRequest({
    List<String>? availabilityZones,
    List<String>? sourceSnapshotIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisableFastSnapshotRestoresRequest._(
      availabilityZones:
          availabilityZones == null ? null : _i3.BuiltList(availabilityZones),
      sourceSnapshotIds:
          sourceSnapshotIds == null ? null : _i3.BuiltList(sourceSnapshotIds),
      dryRun: dryRun,
    );
  }

  factory DisableFastSnapshotRestoresRequest.build(
          [void Function(DisableFastSnapshotRestoresRequestBuilder) updates]) =
      _$DisableFastSnapshotRestoresRequest;

  const DisableFastSnapshotRestoresRequest._();

  factory DisableFastSnapshotRestoresRequest.fromRequest(
    DisableFastSnapshotRestoresRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisableFastSnapshotRestoresRequest>>
      serializers = [DisableFastSnapshotRestoresRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableFastSnapshotRestoresRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more Availability Zones. For example, `us-east-2a`.
  _i3.BuiltList<String>? get availabilityZones;

  /// The IDs of one or more snapshots. For example, `snap-1234567890abcdef0`.
  _i3.BuiltList<String>? get sourceSnapshotIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableFastSnapshotRestoresRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZones,
        sourceSnapshotIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableFastSnapshotRestoresRequest')
          ..add(
            'availabilityZones',
            availabilityZones,
          )
          ..add(
            'sourceSnapshotIds',
            sourceSnapshotIds,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DisableFastSnapshotRestoresRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisableFastSnapshotRestoresRequest> {
  const DisableFastSnapshotRestoresRequestEc2QuerySerializer()
      : super('DisableFastSnapshotRestoresRequest');

  @override
  Iterable<Type> get types => const [
        DisableFastSnapshotRestoresRequest,
        _$DisableFastSnapshotRestoresRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastSnapshotRestoresRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastSnapshotRestoresRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AvailabilityZone':
          result.availabilityZones.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AvailabilityZone',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'SourceSnapshotId':
          result.sourceSnapshotIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SnapshotId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    DisableFastSnapshotRestoresRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisableFastSnapshotRestoresRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableFastSnapshotRestoresRequest(
      :availabilityZones,
      :sourceSnapshotIds,
      :dryRun
    ) = object;
    if (availabilityZones != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AvailabilityZone',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          availabilityZones,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (sourceSnapshotIds != null) {
      result$
        ..add(const _i1.XmlElementName('SourceSnapshotId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SnapshotId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourceSnapshotIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
