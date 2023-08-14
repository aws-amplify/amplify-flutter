// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_snapshots_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_info.dart';

part 'create_snapshots_result.g.dart';

abstract class CreateSnapshotsResult
    with _i1.AWSEquatable<CreateSnapshotsResult>
    implements Built<CreateSnapshotsResult, CreateSnapshotsResultBuilder> {
  factory CreateSnapshotsResult({List<SnapshotInfo>? snapshots}) {
    return _$CreateSnapshotsResult._(
        snapshots: snapshots == null ? null : _i2.BuiltList(snapshots));
  }

  factory CreateSnapshotsResult.build(
          [void Function(CreateSnapshotsResultBuilder) updates]) =
      _$CreateSnapshotsResult;

  const CreateSnapshotsResult._();

  /// Constructs a [CreateSnapshotsResult] from a [payload] and [response].
  factory CreateSnapshotsResult.fromResponse(
    CreateSnapshotsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateSnapshotsResult>> serializers = [
    CreateSnapshotsResultEc2QuerySerializer()
  ];

  /// List of snapshots.
  _i2.BuiltList<SnapshotInfo>? get snapshots;
  @override
  List<Object?> get props => [snapshots];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSnapshotsResult')
      ..add(
        'snapshots',
        snapshots,
      );
    return helper.toString();
  }
}

class CreateSnapshotsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateSnapshotsResult> {
  const CreateSnapshotsResultEc2QuerySerializer()
      : super('CreateSnapshotsResult');

  @override
  Iterable<Type> get types => const [
        CreateSnapshotsResult,
        _$CreateSnapshotsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSnapshotsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSnapshotsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotSet':
          result.snapshots.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SnapshotInfo)],
            ),
          ) as _i2.BuiltList<SnapshotInfo>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateSnapshotsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateSnapshotsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSnapshotsResult(:snapshots) = object;
    if (snapshots != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshots,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SnapshotInfo)],
          ),
        ));
    }
    return result$;
  }
}
