// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_discovered_resource_cidrs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'get_ipam_discovered_resource_cidrs_request.g.dart';

abstract class GetIpamDiscoveredResourceCidrsRequest
    with
        _i1.HttpInput<GetIpamDiscoveredResourceCidrsRequest>,
        _i2.AWSEquatable<GetIpamDiscoveredResourceCidrsRequest>
    implements
        Built<GetIpamDiscoveredResourceCidrsRequest,
            GetIpamDiscoveredResourceCidrsRequestBuilder> {
  factory GetIpamDiscoveredResourceCidrsRequest({
    bool? dryRun,
    String? ipamResourceDiscoveryId,
    String? resourceRegion,
    List<Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamDiscoveredResourceCidrsRequest._(
      dryRun: dryRun,
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      resourceRegion: resourceRegion,
      filters: filters == null ? null : _i3.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory GetIpamDiscoveredResourceCidrsRequest.build(
      [void Function(GetIpamDiscoveredResourceCidrsRequestBuilder)
          updates]) = _$GetIpamDiscoveredResourceCidrsRequest;

  const GetIpamDiscoveredResourceCidrsRequest._();

  factory GetIpamDiscoveredResourceCidrsRequest.fromRequest(
    GetIpamDiscoveredResourceCidrsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetIpamDiscoveredResourceCidrsRequest>>
      serializers = [GetIpamDiscoveredResourceCidrsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamDiscoveredResourceCidrsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// A resource Region.
  String? get resourceRegion;

  /// Filters.
  _i3.BuiltList<Filter>? get filters;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of discovered resource CIDRs to return in one page of results.
  int get maxResults;
  @override
  GetIpamDiscoveredResourceCidrsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamResourceDiscoveryId,
        resourceRegion,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetIpamDiscoveredResourceCidrsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamResourceDiscoveryId',
            ipamResourceDiscoveryId,
          )
          ..add(
            'resourceRegion',
            resourceRegion,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'maxResults',
            maxResults,
          );
    return helper.toString();
  }
}

class GetIpamDiscoveredResourceCidrsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetIpamDiscoveredResourceCidrsRequest> {
  const GetIpamDiscoveredResourceCidrsRequestEc2QuerySerializer()
      : super('GetIpamDiscoveredResourceCidrsRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamDiscoveredResourceCidrsRequest,
        _$GetIpamDiscoveredResourceCidrsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamDiscoveredResourceCidrsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamDiscoveredResourceCidrsRequestBuilder();
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
        case 'IpamResourceDiscoveryId':
          result.ipamResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceRegion':
          result.resourceRegion = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetIpamDiscoveredResourceCidrsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetIpamDiscoveredResourceCidrsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamDiscoveredResourceCidrsRequest(
      :dryRun,
      :ipamResourceDiscoveryId,
      :resourceRegion,
      :filters,
      :nextToken,
      :maxResults
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamResourceDiscoveryId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamResourceDiscoveryId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceRegion != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceRegion'))
        ..add(serializers.serialize(
          resourceRegion,
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
    return result$;
  }
}
