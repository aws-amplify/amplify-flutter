// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_export_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task.dart';

part 'describe_export_tasks_result.g.dart';

abstract class DescribeExportTasksResult
    with _i1.AWSEquatable<DescribeExportTasksResult>
    implements
        Built<DescribeExportTasksResult, DescribeExportTasksResultBuilder> {
  factory DescribeExportTasksResult({List<ExportTask>? exportTasks}) {
    return _$DescribeExportTasksResult._(
        exportTasks: exportTasks == null ? null : _i2.BuiltList(exportTasks));
  }

  factory DescribeExportTasksResult.build(
          [void Function(DescribeExportTasksResultBuilder) updates]) =
      _$DescribeExportTasksResult;

  const DescribeExportTasksResult._();

  /// Constructs a [DescribeExportTasksResult] from a [payload] and [response].
  factory DescribeExportTasksResult.fromResponse(
    DescribeExportTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeExportTasksResult>>
      serializers = [DescribeExportTasksResultEc2QuerySerializer()];

  /// Information about the export tasks.
  _i2.BuiltList<ExportTask>? get exportTasks;
  @override
  List<Object?> get props => [exportTasks];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportTasksResult')
      ..add(
        'exportTasks',
        exportTasks,
      );
    return helper.toString();
  }
}

class DescribeExportTasksResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeExportTasksResult> {
  const DescribeExportTasksResultEc2QuerySerializer()
      : super('DescribeExportTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeExportTasksResult,
        _$DescribeExportTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'exportTaskSet':
          result.exportTasks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ExportTask)],
            ),
          ) as _i2.BuiltList<ExportTask>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeExportTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeExportTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeExportTasksResult(:exportTasks) = object;
    if (exportTasks != null) {
      result$
        ..add(const _i3.XmlElementName('ExportTaskSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          exportTasks,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ExportTask)],
          ),
        ));
    }
    return result$;
  }
}
