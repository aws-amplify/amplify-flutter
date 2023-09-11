// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fast_snapshot_restores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restore_success_item.dart';

part 'describe_fast_snapshot_restores_result.g.dart';

abstract class DescribeFastSnapshotRestoresResult
    with
        _i1.AWSEquatable<DescribeFastSnapshotRestoresResult>
    implements
        Built<DescribeFastSnapshotRestoresResult,
            DescribeFastSnapshotRestoresResultBuilder> {
  factory DescribeFastSnapshotRestoresResult({
    List<DescribeFastSnapshotRestoreSuccessItem>? fastSnapshotRestores,
    String? nextToken,
  }) {
    return _$DescribeFastSnapshotRestoresResult._(
      fastSnapshotRestores: fastSnapshotRestores == null
          ? null
          : _i2.BuiltList(fastSnapshotRestores),
      nextToken: nextToken,
    );
  }

  factory DescribeFastSnapshotRestoresResult.build(
          [void Function(DescribeFastSnapshotRestoresResultBuilder) updates]) =
      _$DescribeFastSnapshotRestoresResult;

  const DescribeFastSnapshotRestoresResult._();

  /// Constructs a [DescribeFastSnapshotRestoresResult] from a [payload] and [response].
  factory DescribeFastSnapshotRestoresResult.fromResponse(
    DescribeFastSnapshotRestoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeFastSnapshotRestoresResult>>
      serializers = [DescribeFastSnapshotRestoresResultEc2QuerySerializer()];

  /// Information about the state of fast snapshot restores.
  _i2.BuiltList<DescribeFastSnapshotRestoreSuccessItem>?
      get fastSnapshotRestores;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        fastSnapshotRestores,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastSnapshotRestoresResult')
          ..add(
            'fastSnapshotRestores',
            fastSnapshotRestores,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeFastSnapshotRestoresResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFastSnapshotRestoresResult> {
  const DescribeFastSnapshotRestoresResultEc2QuerySerializer()
      : super('DescribeFastSnapshotRestoresResult');

  @override
  Iterable<Type> get types => const [
        DescribeFastSnapshotRestoresResult,
        _$DescribeFastSnapshotRestoresResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastSnapshotRestoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastSnapshotRestoresResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fastSnapshotRestoreSet':
          result.fastSnapshotRestores.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DescribeFastSnapshotRestoreSuccessItem)],
            ),
          ) as _i2.BuiltList<DescribeFastSnapshotRestoreSuccessItem>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeFastSnapshotRestoresResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFastSnapshotRestoresResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFastSnapshotRestoresResult(
      :fastSnapshotRestores,
      :nextToken
    ) = object;
    if (fastSnapshotRestores != null) {
      result$
        ..add(const _i3.XmlElementName('FastSnapshotRestoreSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fastSnapshotRestores,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DescribeFastSnapshotRestoreSuccessItem)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
