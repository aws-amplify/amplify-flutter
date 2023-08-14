// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_import_snapshot_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_task.dart';

part 'describe_import_snapshot_tasks_result.g.dart';

abstract class DescribeImportSnapshotTasksResult
    with
        _i1.AWSEquatable<DescribeImportSnapshotTasksResult>
    implements
        Built<DescribeImportSnapshotTasksResult,
            DescribeImportSnapshotTasksResultBuilder> {
  factory DescribeImportSnapshotTasksResult({
    List<ImportSnapshotTask>? importSnapshotTasks,
    String? nextToken,
  }) {
    return _$DescribeImportSnapshotTasksResult._(
      importSnapshotTasks: importSnapshotTasks == null
          ? null
          : _i2.BuiltList(importSnapshotTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeImportSnapshotTasksResult.build(
          [void Function(DescribeImportSnapshotTasksResultBuilder) updates]) =
      _$DescribeImportSnapshotTasksResult;

  const DescribeImportSnapshotTasksResult._();

  /// Constructs a [DescribeImportSnapshotTasksResult] from a [payload] and [response].
  factory DescribeImportSnapshotTasksResult.fromResponse(
    DescribeImportSnapshotTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeImportSnapshotTasksResult>>
      serializers = [DescribeImportSnapshotTasksResultEc2QuerySerializer()];

  /// A list of zero or more import snapshot tasks that are currently active or were completed or canceled in the previous 7 days.
  _i2.BuiltList<ImportSnapshotTask>? get importSnapshotTasks;

  /// The token to use to get the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        importSnapshotTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeImportSnapshotTasksResult')
          ..add(
            'importSnapshotTasks',
            importSnapshotTasks,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeImportSnapshotTasksResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeImportSnapshotTasksResult> {
  const DescribeImportSnapshotTasksResultEc2QuerySerializer()
      : super('DescribeImportSnapshotTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeImportSnapshotTasksResult,
        _$DescribeImportSnapshotTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImportSnapshotTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportSnapshotTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'importSnapshotTaskSet':
          result.importSnapshotTasks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ImportSnapshotTask)],
            ),
          ) as _i2.BuiltList<ImportSnapshotTask>));
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
    DescribeImportSnapshotTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeImportSnapshotTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeImportSnapshotTasksResult(:importSnapshotTasks, :nextToken) =
        object;
    if (importSnapshotTasks != null) {
      result$
        ..add(const _i3.XmlElementName('ImportSnapshotTaskSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          importSnapshotTasks,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ImportSnapshotTask)],
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
