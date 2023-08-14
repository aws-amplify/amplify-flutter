// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_discovered_accounts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'get_ipam_discovered_accounts_request.g.dart';

abstract class GetIpamDiscoveredAccountsRequest
    with
        _i1.HttpInput<GetIpamDiscoveredAccountsRequest>,
        _i2.AWSEquatable<GetIpamDiscoveredAccountsRequest>
    implements
        Built<GetIpamDiscoveredAccountsRequest,
            GetIpamDiscoveredAccountsRequestBuilder> {
  factory GetIpamDiscoveredAccountsRequest({
    bool? dryRun,
    String? ipamResourceDiscoveryId,
    String? discoveryRegion,
    List<Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamDiscoveredAccountsRequest._(
      dryRun: dryRun,
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      discoveryRegion: discoveryRegion,
      filters: filters == null ? null : _i3.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory GetIpamDiscoveredAccountsRequest.build(
          [void Function(GetIpamDiscoveredAccountsRequestBuilder) updates]) =
      _$GetIpamDiscoveredAccountsRequest;

  const GetIpamDiscoveredAccountsRequest._();

  factory GetIpamDiscoveredAccountsRequest.fromRequest(
    GetIpamDiscoveredAccountsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetIpamDiscoveredAccountsRequest>>
      serializers = [GetIpamDiscoveredAccountsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamDiscoveredAccountsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// The Amazon Web Services Region that the account information is returned from.
  String? get discoveryRegion;

  /// Discovered account filters.
  _i3.BuiltList<Filter>? get filters;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of discovered accounts to return in one page of results.
  int get maxResults;
  @override
  GetIpamDiscoveredAccountsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamResourceDiscoveryId,
        discoveryRegion,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetIpamDiscoveredAccountsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamResourceDiscoveryId',
            ipamResourceDiscoveryId,
          )
          ..add(
            'discoveryRegion',
            discoveryRegion,
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

class GetIpamDiscoveredAccountsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetIpamDiscoveredAccountsRequest> {
  const GetIpamDiscoveredAccountsRequestEc2QuerySerializer()
      : super('GetIpamDiscoveredAccountsRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamDiscoveredAccountsRequest,
        _$GetIpamDiscoveredAccountsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamDiscoveredAccountsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamDiscoveredAccountsRequestBuilder();
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
        case 'DiscoveryRegion':
          result.discoveryRegion = (serializers.deserialize(
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
    GetIpamDiscoveredAccountsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetIpamDiscoveredAccountsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamDiscoveredAccountsRequest(
      :dryRun,
      :ipamResourceDiscoveryId,
      :discoveryRegion,
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
    if (discoveryRegion != null) {
      result$
        ..add(const _i1.XmlElementName('DiscoveryRegion'))
        ..add(serializers.serialize(
          discoveryRegion,
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
