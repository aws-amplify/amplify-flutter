// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_export_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_export_tasks_request.g.dart';

abstract class DescribeExportTasksRequest
    with
        _i1.HttpInput<DescribeExportTasksRequest>,
        _i2.AWSEquatable<DescribeExportTasksRequest>
    implements
        Built<DescribeExportTasksRequest, DescribeExportTasksRequestBuilder> {
  factory DescribeExportTasksRequest({
    List<String>? exportTaskIds,
    List<Filter>? filters,
  }) {
    return _$DescribeExportTasksRequest._(
      exportTaskIds:
          exportTaskIds == null ? null : _i3.BuiltList(exportTaskIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribeExportTasksRequest.build(
          [void Function(DescribeExportTasksRequestBuilder) updates]) =
      _$DescribeExportTasksRequest;

  const DescribeExportTasksRequest._();

  factory DescribeExportTasksRequest.fromRequest(
    DescribeExportTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeExportTasksRequest>>
      serializers = [DescribeExportTasksRequestEc2QuerySerializer()];

  /// The export task IDs.
  _i3.BuiltList<String>? get exportTaskIds;

  /// the filters for the export tasks.
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribeExportTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        exportTaskIds,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportTasksRequest')
      ..add(
        'exportTaskIds',
        exportTaskIds,
      )
      ..add(
        'filters',
        filters,
      );
    return helper.toString();
  }
}

class DescribeExportTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeExportTasksRequest> {
  const DescribeExportTasksRequestEc2QuerySerializer()
      : super('DescribeExportTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeExportTasksRequest,
        _$DescribeExportTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'exportTaskId':
          result.exportTaskIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ExportTaskId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeExportTasksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeExportTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeExportTasksRequest(:exportTaskIds, :filters) = object;
    if (exportTaskIds != null) {
      result$
        ..add(const _i1.XmlElementName('ExportTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ExportTaskId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          exportTaskIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    return result$;
  }
}
