// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_interface_permissions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart';

part 'describe_network_interface_permissions_result.g.dart';

/// Contains the output for DescribeNetworkInterfacePermissions.
abstract class DescribeNetworkInterfacePermissionsResult
    with
        _i1.AWSEquatable<DescribeNetworkInterfacePermissionsResult>
    implements
        Built<DescribeNetworkInterfacePermissionsResult,
            DescribeNetworkInterfacePermissionsResultBuilder> {
  /// Contains the output for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsResult({
    List<NetworkInterfacePermission>? networkInterfacePermissions,
    String? nextToken,
  }) {
    return _$DescribeNetworkInterfacePermissionsResult._(
      networkInterfacePermissions: networkInterfacePermissions == null
          ? null
          : _i2.BuiltList(networkInterfacePermissions),
      nextToken: nextToken,
    );
  }

  /// Contains the output for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsResult.build(
      [void Function(DescribeNetworkInterfacePermissionsResultBuilder)
          updates]) = _$DescribeNetworkInterfacePermissionsResult;

  const DescribeNetworkInterfacePermissionsResult._();

  /// Constructs a [DescribeNetworkInterfacePermissionsResult] from a [payload] and [response].
  factory DescribeNetworkInterfacePermissionsResult.fromResponse(
    DescribeNetworkInterfacePermissionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeNetworkInterfacePermissionsResult>>
      serializers = [
    DescribeNetworkInterfacePermissionsResultEc2QuerySerializer()
  ];

  /// The network interface permissions.
  _i2.BuiltList<NetworkInterfacePermission>? get networkInterfacePermissions;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInterfacePermissions,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfacePermissionsResult')
          ..add(
            'networkInterfacePermissions',
            networkInterfacePermissions,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeNetworkInterfacePermissionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeNetworkInterfacePermissionsResult> {
  const DescribeNetworkInterfacePermissionsResultEc2QuerySerializer()
      : super('DescribeNetworkInterfacePermissionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacePermissionsResult,
        _$DescribeNetworkInterfacePermissionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacePermissionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacePermissionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInterfacePermissions':
          result.networkInterfacePermissions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInterfacePermission)],
            ),
          ) as _i2.BuiltList<NetworkInterfacePermission>));
        case 'nextToken':
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
    DescribeNetworkInterfacePermissionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkInterfacePermissionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfacePermissionsResult(
      :networkInterfacePermissions,
      :nextToken
    ) = object;
    if (networkInterfacePermissions != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfacePermissions'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfacePermissions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkInterfacePermission)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
