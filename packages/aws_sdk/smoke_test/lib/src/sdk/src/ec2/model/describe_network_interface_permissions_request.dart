// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_interface_permissions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_network_interface_permissions_request.g.dart';

/// Contains the parameters for DescribeNetworkInterfacePermissions.
abstract class DescribeNetworkInterfacePermissionsRequest
    with
        _i1.HttpInput<DescribeNetworkInterfacePermissionsRequest>,
        _i2.AWSEquatable<DescribeNetworkInterfacePermissionsRequest>
    implements
        Built<DescribeNetworkInterfacePermissionsRequest,
            DescribeNetworkInterfacePermissionsRequestBuilder> {
  /// Contains the parameters for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsRequest({
    List<String>? networkInterfacePermissionIds,
    List<Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    maxResults ??= 0;
    return _$DescribeNetworkInterfacePermissionsRequest._(
      networkInterfacePermissionIds: networkInterfacePermissionIds == null
          ? null
          : _i3.BuiltList(networkInterfacePermissionIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  /// Contains the parameters for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsRequest.build(
      [void Function(DescribeNetworkInterfacePermissionsRequestBuilder)
          updates]) = _$DescribeNetworkInterfacePermissionsRequest;

  const DescribeNetworkInterfacePermissionsRequest._();

  factory DescribeNetworkInterfacePermissionsRequest.fromRequest(
    DescribeNetworkInterfacePermissionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeNetworkInterfacePermissionsRequest>>
      serializers = [
    DescribeNetworkInterfacePermissionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfacePermissionsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The network interface permission IDs.
  _i3.BuiltList<String>? get networkInterfacePermissionIds;

  /// One or more filters.
  ///
  /// *   `network-interface-permission.network-interface-permission-id` \- The ID of the permission.
  ///
  /// *   `network-interface-permission.network-interface-id` \- The ID of the network interface.
  ///
  /// *   `network-interface-permission.aws-account-id` \- The Amazon Web Services account ID.
  ///
  /// *   `network-interface-permission.aws-service` \- The Amazon Web Service.
  ///
  /// *   `network-interface-permission.permission` \- The type of permission (`INSTANCE-ATTACH` | `EIP-ASSOCIATE`).
  _i3.BuiltList<Filter>? get filters;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. If this parameter is not specified, up to 50 results are returned by default. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeNetworkInterfacePermissionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfacePermissionIds,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInterfacePermissionsRequest')
      ..add(
        'networkInterfacePermissionIds',
        networkInterfacePermissionIds,
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

class DescribeNetworkInterfacePermissionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeNetworkInterfacePermissionsRequest> {
  const DescribeNetworkInterfacePermissionsRequestEc2QuerySerializer()
      : super('DescribeNetworkInterfacePermissionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacePermissionsRequest,
        _$DescribeNetworkInterfacePermissionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacePermissionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacePermissionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInterfacePermissionId':
          result.networkInterfacePermissionIds.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.ec2QueryList)
                  .deserialize(
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
    DescribeNetworkInterfacePermissionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInterfacePermissionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfacePermissionsRequest(
      :networkInterfacePermissionIds,
      :filters,
      :nextToken,
      :maxResults
    ) = object;
    if (networkInterfacePermissionIds != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfacePermissionId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          networkInterfacePermissionIds,
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
