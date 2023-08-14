// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_resource_cidrs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_ipam_resource_tag.dart';

part 'get_ipam_resource_cidrs_request.g.dart';

abstract class GetIpamResourceCidrsRequest
    with
        _i1.HttpInput<GetIpamResourceCidrsRequest>,
        _i2.AWSEquatable<GetIpamResourceCidrsRequest>
    implements
        Built<GetIpamResourceCidrsRequest, GetIpamResourceCidrsRequestBuilder> {
  factory GetIpamResourceCidrsRequest({
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    String? ipamScopeId,
    String? ipamPoolId,
    String? resourceId,
    IpamResourceType? resourceType,
    RequestIpamResourceTag? resourceTag,
    String? resourceOwner,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamResourceCidrsRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      ipamScopeId: ipamScopeId,
      ipamPoolId: ipamPoolId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceTag: resourceTag,
      resourceOwner: resourceOwner,
    );
  }

  factory GetIpamResourceCidrsRequest.build(
          [void Function(GetIpamResourceCidrsRequestBuilder) updates]) =
      _$GetIpamResourceCidrsRequest;

  const GetIpamResourceCidrsRequest._();

  factory GetIpamResourceCidrsRequest.fromRequest(
    GetIpamResourceCidrsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetIpamResourceCidrsRequest>>
      serializers = [GetIpamResourceCidrsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamResourceCidrsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters for the request. For more information about filtering, see [Filtering CLI output](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return in the request.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// The ID of the scope that the resource is in.
  String? get ipamScopeId;

  /// The ID of the IPAM pool that the resource is in.
  String? get ipamPoolId;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type.
  IpamResourceType? get resourceType;

  /// The resource tag.
  RequestIpamResourceTag? get resourceTag;

  /// The ID of the Amazon Web Services account that owns the resource.
  String? get resourceOwner;
  @override
  GetIpamResourceCidrsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        maxResults,
        nextToken,
        ipamScopeId,
        ipamPoolId,
        resourceId,
        resourceType,
        resourceTag,
        resourceOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamResourceCidrsRequest')
      ..add(
        'dryRun',
        dryRun,
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
        'ipamScopeId',
        ipamScopeId,
      )
      ..add(
        'ipamPoolId',
        ipamPoolId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceTag',
        resourceTag,
      )
      ..add(
        'resourceOwner',
        resourceOwner,
      );
    return helper.toString();
  }
}

class GetIpamResourceCidrsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetIpamResourceCidrsRequest> {
  const GetIpamResourceCidrsRequestEc2QuerySerializer()
      : super('GetIpamResourceCidrsRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamResourceCidrsRequest,
        _$GetIpamResourceCidrsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamResourceCidrsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamResourceCidrsRequestBuilder();
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
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamResourceType),
          ) as IpamResourceType);
        case 'ResourceTag':
          result.resourceTag.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RequestIpamResourceTag),
          ) as RequestIpamResourceTag));
        case 'ResourceOwner':
          result.resourceOwner = (serializers.deserialize(
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
    GetIpamResourceCidrsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetIpamResourceCidrsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamResourceCidrsRequest(
      :dryRun,
      :filters,
      :maxResults,
      :nextToken,
      :ipamScopeId,
      :ipamPoolId,
      :resourceId,
      :resourceType,
      :resourceTag,
      :resourceOwner
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
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
    if (ipamScopeId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          ipamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType.nullable(IpamResourceType),
        ));
    }
    if (resourceTag != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceTag'))
        ..add(serializers.serialize(
          resourceTag,
          specifiedType: const FullType(RequestIpamResourceTag),
        ));
    }
    if (resourceOwner != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          resourceOwner,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
