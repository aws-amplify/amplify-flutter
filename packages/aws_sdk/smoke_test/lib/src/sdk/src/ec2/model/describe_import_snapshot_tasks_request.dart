// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_import_snapshot_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_import_snapshot_tasks_request.g.dart';

abstract class DescribeImportSnapshotTasksRequest
    with
        _i1.HttpInput<DescribeImportSnapshotTasksRequest>,
        _i2.AWSEquatable<DescribeImportSnapshotTasksRequest>
    implements
        Built<DescribeImportSnapshotTasksRequest,
            DescribeImportSnapshotTasksRequestBuilder> {
  factory DescribeImportSnapshotTasksRequest({
    bool? dryRun,
    List<Filter>? filters,
    List<String>? importTaskIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeImportSnapshotTasksRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      importTaskIds:
          importTaskIds == null ? null : _i3.BuiltList(importTaskIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeImportSnapshotTasksRequest.build(
          [void Function(DescribeImportSnapshotTasksRequestBuilder) updates]) =
      _$DescribeImportSnapshotTasksRequest;

  const DescribeImportSnapshotTasksRequest._();

  factory DescribeImportSnapshotTasksRequest.fromRequest(
    DescribeImportSnapshotTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeImportSnapshotTasksRequest>>
      serializers = [DescribeImportSnapshotTasksRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImportSnapshotTasksRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  _i3.BuiltList<Filter>? get filters;

  /// A list of import snapshot task IDs.
  _i3.BuiltList<String>? get importTaskIds;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// A token that indicates the next page of results.
  String? get nextToken;
  @override
  DescribeImportSnapshotTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        importTaskIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeImportSnapshotTasksRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'importTaskIds',
            importTaskIds,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeImportSnapshotTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeImportSnapshotTasksRequest> {
  const DescribeImportSnapshotTasksRequestEc2QuerySerializer()
      : super('DescribeImportSnapshotTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeImportSnapshotTasksRequest,
        _$DescribeImportSnapshotTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImportSnapshotTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportSnapshotTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Filters':
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
        case 'ImportTaskId':
          result.importTaskIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ImportTaskId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
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
    DescribeImportSnapshotTasksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeImportSnapshotTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeImportSnapshotTasksRequest(
      :dryRun,
      :filters,
      :importTaskIds,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filters'))
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
    if (importTaskIds != null) {
      result$
        ..add(const _i1.XmlElementName('ImportTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ImportTaskId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          importTaskIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
