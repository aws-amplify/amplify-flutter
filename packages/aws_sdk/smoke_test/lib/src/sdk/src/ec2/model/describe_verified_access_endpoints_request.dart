// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_verified_access_endpoints_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_verified_access_endpoints_request.g.dart';

abstract class DescribeVerifiedAccessEndpointsRequest
    with
        _i1.HttpInput<DescribeVerifiedAccessEndpointsRequest>,
        _i2.AWSEquatable<DescribeVerifiedAccessEndpointsRequest>
    implements
        Built<DescribeVerifiedAccessEndpointsRequest,
            DescribeVerifiedAccessEndpointsRequestBuilder> {
  factory DescribeVerifiedAccessEndpointsRequest({
    List<String>? verifiedAccessEndpointIds,
    String? verifiedAccessInstanceId,
    String? verifiedAccessGroupId,
    int? maxResults,
    String? nextToken,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeVerifiedAccessEndpointsRequest._(
      verifiedAccessEndpointIds: verifiedAccessEndpointIds == null
          ? null
          : _i3.BuiltList(verifiedAccessEndpointIds),
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      verifiedAccessGroupId: verifiedAccessGroupId,
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeVerifiedAccessEndpointsRequest.build(
      [void Function(DescribeVerifiedAccessEndpointsRequestBuilder)
          updates]) = _$DescribeVerifiedAccessEndpointsRequest;

  const DescribeVerifiedAccessEndpointsRequest._();

  factory DescribeVerifiedAccessEndpointsRequest.fromRequest(
    DescribeVerifiedAccessEndpointsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeVerifiedAccessEndpointsRequest>>
      serializers = [
    DescribeVerifiedAccessEndpointsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVerifiedAccessEndpointsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Verified Access endpoint.
  _i3.BuiltList<String>? get verifiedAccessEndpointIds;

  /// The ID of the Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// The ID of the Verified Access group.
  String? get verifiedAccessGroupId;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// One or more filters. Filter names and values are case-sensitive.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVerifiedAccessEndpointsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessEndpointIds,
        verifiedAccessInstanceId,
        verifiedAccessGroupId,
        maxResults,
        nextToken,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVerifiedAccessEndpointsRequest')
          ..add(
            'verifiedAccessEndpointIds',
            verifiedAccessEndpointIds,
          )
          ..add(
            'verifiedAccessInstanceId',
            verifiedAccessInstanceId,
          )
          ..add(
            'verifiedAccessGroupId',
            verifiedAccessGroupId,
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
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeVerifiedAccessEndpointsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeVerifiedAccessEndpointsRequest> {
  const DescribeVerifiedAccessEndpointsRequestEc2QuerySerializer()
      : super('DescribeVerifiedAccessEndpointsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVerifiedAccessEndpointsRequest,
        _$DescribeVerifiedAccessEndpointsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVerifiedAccessEndpointsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVerifiedAccessEndpointsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessEndpointId':
          result.verifiedAccessEndpointIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'VerifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VerifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DescribeVerifiedAccessEndpointsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVerifiedAccessEndpointsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVerifiedAccessEndpointsRequest(
      :verifiedAccessEndpointIds,
      :verifiedAccessInstanceId,
      :verifiedAccessGroupId,
      :maxResults,
      :nextToken,
      :filters,
      :dryRun
    ) = object;
    if (verifiedAccessEndpointIds != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessEndpointId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          verifiedAccessEndpointIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
