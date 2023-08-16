// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_resource_discovery_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_ipam_resource_discovery_associations_request.g.dart';

abstract class DescribeIpamResourceDiscoveryAssociationsRequest
    with
        _i1.HttpInput<DescribeIpamResourceDiscoveryAssociationsRequest>,
        _i2.AWSEquatable<DescribeIpamResourceDiscoveryAssociationsRequest>
    implements
        Built<DescribeIpamResourceDiscoveryAssociationsRequest,
            DescribeIpamResourceDiscoveryAssociationsRequestBuilder> {
  factory DescribeIpamResourceDiscoveryAssociationsRequest({
    bool? dryRun,
    List<String>? ipamResourceDiscoveryAssociationIds,
    String? nextToken,
    int? maxResults,
    List<Filter>? filters,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeIpamResourceDiscoveryAssociationsRequest._(
      dryRun: dryRun,
      ipamResourceDiscoveryAssociationIds:
          ipamResourceDiscoveryAssociationIds == null
              ? null
              : _i3.BuiltList(ipamResourceDiscoveryAssociationIds),
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribeIpamResourceDiscoveryAssociationsRequest.build(
      [void Function(DescribeIpamResourceDiscoveryAssociationsRequestBuilder)
          updates]) = _$DescribeIpamResourceDiscoveryAssociationsRequest;

  const DescribeIpamResourceDiscoveryAssociationsRequest._();

  factory DescribeIpamResourceDiscoveryAssociationsRequest.fromRequest(
    DescribeIpamResourceDiscoveryAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1
          .SmithySerializer<DescribeIpamResourceDiscoveryAssociationsRequest>>
      serializers = [
    DescribeIpamResourceDiscoveryAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpamResourceDiscoveryAssociationsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The resource discovery association IDs.
  _i3.BuiltList<String>? get ipamResourceDiscoveryAssociationIds;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of resource discovery associations to return in one page of results.
  int get maxResults;

  /// The resource discovery association filters.
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribeIpamResourceDiscoveryAssociationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamResourceDiscoveryAssociationIds,
        nextToken,
        maxResults,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeIpamResourceDiscoveryAssociationsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipamResourceDiscoveryAssociationIds',
        ipamResourceDiscoveryAssociationIds,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'filters',
        filters,
      );
    return helper.toString();
  }
}

class DescribeIpamResourceDiscoveryAssociationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeIpamResourceDiscoveryAssociationsRequest> {
  const DescribeIpamResourceDiscoveryAssociationsRequestEc2QuerySerializer()
      : super('DescribeIpamResourceDiscoveryAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIpamResourceDiscoveryAssociationsRequest,
        _$DescribeIpamResourceDiscoveryAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamResourceDiscoveryAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamResourceDiscoveryAssociationsRequestBuilder();
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
        case 'IpamResourceDiscoveryAssociationId':
          result.ipamResourceDiscoveryAssociationIds
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    DescribeIpamResourceDiscoveryAssociationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIpamResourceDiscoveryAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamResourceDiscoveryAssociationsRequest(
      :dryRun,
      :ipamResourceDiscoveryAssociationIds,
      :nextToken,
      :maxResults,
      :filters
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamResourceDiscoveryAssociationIds != null) {
      result$
        ..add(const _i1.XmlElementName('IpamResourceDiscoveryAssociationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamResourceDiscoveryAssociationIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
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
    return result$;
  }
}
