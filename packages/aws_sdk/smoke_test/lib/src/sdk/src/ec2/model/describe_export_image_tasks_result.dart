// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_export_image_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_task.dart';

part 'describe_export_image_tasks_result.g.dart';

abstract class DescribeExportImageTasksResult
    with
        _i1.AWSEquatable<DescribeExportImageTasksResult>
    implements
        Built<DescribeExportImageTasksResult,
            DescribeExportImageTasksResultBuilder> {
  factory DescribeExportImageTasksResult({
    List<ExportImageTask>? exportImageTasks,
    String? nextToken,
  }) {
    return _$DescribeExportImageTasksResult._(
      exportImageTasks:
          exportImageTasks == null ? null : _i2.BuiltList(exportImageTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeExportImageTasksResult.build(
          [void Function(DescribeExportImageTasksResultBuilder) updates]) =
      _$DescribeExportImageTasksResult;

  const DescribeExportImageTasksResult._();

  /// Constructs a [DescribeExportImageTasksResult] from a [payload] and [response].
  factory DescribeExportImageTasksResult.fromResponse(
    DescribeExportImageTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeExportImageTasksResult>>
      serializers = [DescribeExportImageTasksResultEc2QuerySerializer()];

  /// Information about the export image tasks.
  _i2.BuiltList<ExportImageTask>? get exportImageTasks;

  /// The token to use to get the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        exportImageTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportImageTasksResult')
      ..add(
        'exportImageTasks',
        exportImageTasks,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeExportImageTasksResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeExportImageTasksResult> {
  const DescribeExportImageTasksResultEc2QuerySerializer()
      : super('DescribeExportImageTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeExportImageTasksResult,
        _$DescribeExportImageTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportImageTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportImageTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'exportImageTaskSet':
          result.exportImageTasks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ExportImageTask)],
            ),
          ) as _i2.BuiltList<ExportImageTask>));
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
    DescribeExportImageTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeExportImageTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeExportImageTasksResult(:exportImageTasks, :nextToken) =
        object;
    if (exportImageTasks != null) {
      result$
        ..add(const _i3.XmlElementName('ExportImageTaskSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          exportImageTasks,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ExportImageTask)],
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
