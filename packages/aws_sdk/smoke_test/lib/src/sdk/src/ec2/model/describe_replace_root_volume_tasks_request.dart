// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_replace_root_volume_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_replace_root_volume_tasks_request.g.dart';

abstract class DescribeReplaceRootVolumeTasksRequest
    with
        _i1.HttpInput<DescribeReplaceRootVolumeTasksRequest>,
        _i2.AWSEquatable<DescribeReplaceRootVolumeTasksRequest>
    implements
        Built<DescribeReplaceRootVolumeTasksRequest,
            DescribeReplaceRootVolumeTasksRequestBuilder> {
  factory DescribeReplaceRootVolumeTasksRequest({
    List<String>? replaceRootVolumeTaskIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeReplaceRootVolumeTasksRequest._(
      replaceRootVolumeTaskIds: replaceRootVolumeTaskIds == null
          ? null
          : _i3.BuiltList(replaceRootVolumeTaskIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeReplaceRootVolumeTasksRequest.build(
      [void Function(DescribeReplaceRootVolumeTasksRequestBuilder)
          updates]) = _$DescribeReplaceRootVolumeTasksRequest;

  const DescribeReplaceRootVolumeTasksRequest._();

  factory DescribeReplaceRootVolumeTasksRequest.fromRequest(
    DescribeReplaceRootVolumeTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeReplaceRootVolumeTasksRequest>>
      serializers = [DescribeReplaceRootVolumeTasksRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReplaceRootVolumeTasksRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the root volume replacement task to view.
  _i3.BuiltList<String>? get replaceRootVolumeTaskIds;

  /// Filter to use:
  ///
  /// *   `instance-id` \- The ID of the instance for which the root volume replacement task was created.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeReplaceRootVolumeTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        replaceRootVolumeTaskIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReplaceRootVolumeTasksRequest')
          ..add(
            'replaceRootVolumeTaskIds',
            replaceRootVolumeTaskIds,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeReplaceRootVolumeTasksRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeReplaceRootVolumeTasksRequest> {
  const DescribeReplaceRootVolumeTasksRequestEc2QuerySerializer()
      : super('DescribeReplaceRootVolumeTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeReplaceRootVolumeTasksRequest,
        _$DescribeReplaceRootVolumeTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReplaceRootVolumeTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReplaceRootVolumeTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ReplaceRootVolumeTaskId':
          result.replaceRootVolumeTaskIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ReplaceRootVolumeTaskId',
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
    DescribeReplaceRootVolumeTasksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeReplaceRootVolumeTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReplaceRootVolumeTasksRequest(
      :replaceRootVolumeTaskIds,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (replaceRootVolumeTaskIds != null) {
      result$
        ..add(const _i1.XmlElementName('ReplaceRootVolumeTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ReplaceRootVolumeTaskId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          replaceRootVolumeTaskIds,
          specifiedType: const FullType.nullable(
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
