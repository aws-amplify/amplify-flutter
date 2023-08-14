// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assigned_private_ip_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'assigned_private_ip_address.g.dart';

/// Describes the private IP addresses assigned to a network interface.
abstract class AssignedPrivateIpAddress
    with _i1.AWSEquatable<AssignedPrivateIpAddress>
    implements
        Built<AssignedPrivateIpAddress, AssignedPrivateIpAddressBuilder> {
  /// Describes the private IP addresses assigned to a network interface.
  factory AssignedPrivateIpAddress({String? privateIpAddress}) {
    return _$AssignedPrivateIpAddress._(privateIpAddress: privateIpAddress);
  }

  /// Describes the private IP addresses assigned to a network interface.
  factory AssignedPrivateIpAddress.build(
          [void Function(AssignedPrivateIpAddressBuilder) updates]) =
      _$AssignedPrivateIpAddress;

  const AssignedPrivateIpAddress._();

  static const List<_i2.SmithySerializer<AssignedPrivateIpAddress>>
      serializers = [AssignedPrivateIpAddressEc2QuerySerializer()];

  /// The private IP address assigned to the network interface.
  String? get privateIpAddress;
  @override
  List<Object?> get props => [privateIpAddress];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssignedPrivateIpAddress')
      ..add(
        'privateIpAddress',
        privateIpAddress,
      );
    return helper.toString();
  }
}

class AssignedPrivateIpAddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssignedPrivateIpAddress> {
  const AssignedPrivateIpAddressEc2QuerySerializer()
      : super('AssignedPrivateIpAddress');

  @override
  Iterable<Type> get types => const [
        AssignedPrivateIpAddress,
        _$AssignedPrivateIpAddress,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignedPrivateIpAddress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignedPrivateIpAddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
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
    AssignedPrivateIpAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssignedPrivateIpAddressResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignedPrivateIpAddress(:privateIpAddress) = object;
    if (privateIpAddress != null) {
      result$
        ..add(const _i2.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
