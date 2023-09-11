// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_event_windows_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_instance_event_windows_request.g.dart';

/// Describe instance event windows by InstanceEventWindow.
abstract class DescribeInstanceEventWindowsRequest
    with
        _i1.HttpInput<DescribeInstanceEventWindowsRequest>,
        _i2.AWSEquatable<DescribeInstanceEventWindowsRequest>
    implements
        Built<DescribeInstanceEventWindowsRequest,
            DescribeInstanceEventWindowsRequestBuilder> {
  /// Describe instance event windows by InstanceEventWindow.
  factory DescribeInstanceEventWindowsRequest({
    bool? dryRun,
    List<String>? instanceEventWindowIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeInstanceEventWindowsRequest._(
      dryRun: dryRun,
      instanceEventWindowIds: instanceEventWindowIds == null
          ? null
          : _i3.BuiltList(instanceEventWindowIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  /// Describe instance event windows by InstanceEventWindow.
  factory DescribeInstanceEventWindowsRequest.build(
          [void Function(DescribeInstanceEventWindowsRequestBuilder) updates]) =
      _$DescribeInstanceEventWindowsRequest;

  const DescribeInstanceEventWindowsRequest._();

  factory DescribeInstanceEventWindowsRequest.fromRequest(
    DescribeInstanceEventWindowsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeInstanceEventWindowsRequest>>
      serializers = [DescribeInstanceEventWindowsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceEventWindowsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the event windows.
  _i3.BuiltList<String>? get instanceEventWindowIds;

  /// One or more filters.
  ///
  /// *   `dedicated-host-id` \- The event windows associated with the specified Dedicated Host ID.
  ///
  /// *   `event-window-name` \- The event windows associated with the specified names.
  ///
  /// *   `instance-id` \- The event windows associated with the specified instance ID.
  ///
  /// *   `instance-tag` \- The event windows associated with the specified tag and value.
  ///
  /// *   `instance-tag-key` \- The event windows associated with the specified tag key, regardless of the value.
  ///
  /// *   `instance-tag-value` \- The event windows associated with the specified tag value, regardless of the key.
  ///
  /// *   `tag:` \- The key/value combination of a tag assigned to the event window. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `CMX`, specify `tag:Owner` for the filter name and `CMX` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the event window. Use this filter to find all event windows that have a tag with a specific key, regardless of the tag value.
  ///
  /// *   `tag-value` \- The value of a tag assigned to the event window. Use this filter to find all event windows that have a tag with a specific value, regardless of the tag key.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 20 and 500. You cannot specify this parameter and the event window IDs parameter in the same call.
  int get maxResults;

  /// The token to request the next page of results.
  String? get nextToken;
  @override
  DescribeInstanceEventWindowsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceEventWindowIds,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceEventWindowsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'instanceEventWindowIds',
            instanceEventWindowIds,
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
          );
    return helper.toString();
  }
}

class DescribeInstanceEventWindowsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeInstanceEventWindowsRequest> {
  const DescribeInstanceEventWindowsRequestEc2QuerySerializer()
      : super('DescribeInstanceEventWindowsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceEventWindowsRequest,
        _$DescribeInstanceEventWindowsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceEventWindowsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceEventWindowsRequestBuilder();
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
        case 'InstanceEventWindowId':
          result.instanceEventWindowIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'InstanceEventWindowId',
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeInstanceEventWindowsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceEventWindowsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceEventWindowsRequest(
      :dryRun,
      :instanceEventWindowIds,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceEventWindowIds != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceEventWindowId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceEventWindowId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceEventWindowIds,
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
