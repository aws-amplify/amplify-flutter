// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.apply_security_groups_to_client_vpn_target_network_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'apply_security_groups_to_client_vpn_target_network_result.g.dart';

abstract class ApplySecurityGroupsToClientVpnTargetNetworkResult
    with
        _i1.AWSEquatable<ApplySecurityGroupsToClientVpnTargetNetworkResult>
    implements
        Built<ApplySecurityGroupsToClientVpnTargetNetworkResult,
            ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder> {
  factory ApplySecurityGroupsToClientVpnTargetNetworkResult(
      {List<String>? securityGroupIds}) {
    return _$ApplySecurityGroupsToClientVpnTargetNetworkResult._(
        securityGroupIds:
            securityGroupIds == null ? null : _i2.BuiltList(securityGroupIds));
  }

  factory ApplySecurityGroupsToClientVpnTargetNetworkResult.build(
      [void Function(ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder)
          updates]) = _$ApplySecurityGroupsToClientVpnTargetNetworkResult;

  const ApplySecurityGroupsToClientVpnTargetNetworkResult._();

  /// Constructs a [ApplySecurityGroupsToClientVpnTargetNetworkResult] from a [payload] and [response].
  factory ApplySecurityGroupsToClientVpnTargetNetworkResult.fromResponse(
    ApplySecurityGroupsToClientVpnTargetNetworkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i3.SmithySerializer<
          ApplySecurityGroupsToClientVpnTargetNetworkResult>> serializers = [
    ApplySecurityGroupsToClientVpnTargetNetworkResultEc2QuerySerializer()
  ];

  /// The IDs of the applied security groups.
  _i2.BuiltList<String>? get securityGroupIds;
  @override
  List<Object?> get props => [securityGroupIds];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ApplySecurityGroupsToClientVpnTargetNetworkResult')
      ..add(
        'securityGroupIds',
        securityGroupIds,
      );
    return helper.toString();
  }
}

class ApplySecurityGroupsToClientVpnTargetNetworkResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        ApplySecurityGroupsToClientVpnTargetNetworkResult> {
  const ApplySecurityGroupsToClientVpnTargetNetworkResultEc2QuerySerializer()
      : super('ApplySecurityGroupsToClientVpnTargetNetworkResult');

  @override
  Iterable<Type> get types => const [
        ApplySecurityGroupsToClientVpnTargetNetworkResult,
        _$ApplySecurityGroupsToClientVpnTargetNetworkResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ApplySecurityGroupsToClientVpnTargetNetworkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'securityGroupIds':
          result.securityGroupIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ApplySecurityGroupsToClientVpnTargetNetworkResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ApplySecurityGroupsToClientVpnTargetNetworkResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ApplySecurityGroupsToClientVpnTargetNetworkResult(:securityGroupIds) =
        object;
    if (securityGroupIds != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
