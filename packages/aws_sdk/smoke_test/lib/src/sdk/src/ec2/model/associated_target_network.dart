// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associated_target_network; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_network_type.dart';

part 'associated_target_network.g.dart';

/// Describes a target network that is associated with a Client VPN endpoint. A target network is a subnet in a VPC.
abstract class AssociatedTargetNetwork
    with _i1.AWSEquatable<AssociatedTargetNetwork>
    implements Built<AssociatedTargetNetwork, AssociatedTargetNetworkBuilder> {
  /// Describes a target network that is associated with a Client VPN endpoint. A target network is a subnet in a VPC.
  factory AssociatedTargetNetwork({
    String? networkId,
    AssociatedNetworkType? networkType,
  }) {
    return _$AssociatedTargetNetwork._(
      networkId: networkId,
      networkType: networkType,
    );
  }

  /// Describes a target network that is associated with a Client VPN endpoint. A target network is a subnet in a VPC.
  factory AssociatedTargetNetwork.build(
          [void Function(AssociatedTargetNetworkBuilder) updates]) =
      _$AssociatedTargetNetwork;

  const AssociatedTargetNetwork._();

  static const List<_i2.SmithySerializer<AssociatedTargetNetwork>> serializers =
      [AssociatedTargetNetworkEc2QuerySerializer()];

  /// The ID of the subnet.
  String? get networkId;

  /// The target network type.
  AssociatedNetworkType? get networkType;
  @override
  List<Object?> get props => [
        networkId,
        networkType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociatedTargetNetwork')
      ..add(
        'networkId',
        networkId,
      )
      ..add(
        'networkType',
        networkType,
      );
    return helper.toString();
  }
}

class AssociatedTargetNetworkEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociatedTargetNetwork> {
  const AssociatedTargetNetworkEc2QuerySerializer()
      : super('AssociatedTargetNetwork');

  @override
  Iterable<Type> get types => const [
        AssociatedTargetNetwork,
        _$AssociatedTargetNetwork,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociatedTargetNetwork deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociatedTargetNetworkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkId':
          result.networkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkType':
          result.networkType = (serializers.deserialize(
            value,
            specifiedType: const FullType(AssociatedNetworkType),
          ) as AssociatedNetworkType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociatedTargetNetwork object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociatedTargetNetworkResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociatedTargetNetwork(:networkId, :networkType) = object;
    if (networkId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkId'))
        ..add(serializers.serialize(
          networkId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkType != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkType'))
        ..add(serializers.serialize(
          networkType,
          specifiedType: const FullType(AssociatedNetworkType),
        ));
    }
    return result$;
  }
}
