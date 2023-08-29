// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assign_private_nat_gateway_address_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_address.dart';

part 'assign_private_nat_gateway_address_result.g.dart';

abstract class AssignPrivateNatGatewayAddressResult
    with
        _i1.AWSEquatable<AssignPrivateNatGatewayAddressResult>
    implements
        Built<AssignPrivateNatGatewayAddressResult,
            AssignPrivateNatGatewayAddressResultBuilder> {
  factory AssignPrivateNatGatewayAddressResult({
    String? natGatewayId,
    List<NatGatewayAddress>? natGatewayAddresses,
  }) {
    return _$AssignPrivateNatGatewayAddressResult._(
      natGatewayId: natGatewayId,
      natGatewayAddresses: natGatewayAddresses == null
          ? null
          : _i2.BuiltList(natGatewayAddresses),
    );
  }

  factory AssignPrivateNatGatewayAddressResult.build(
      [void Function(AssignPrivateNatGatewayAddressResultBuilder)
          updates]) = _$AssignPrivateNatGatewayAddressResult;

  const AssignPrivateNatGatewayAddressResult._();

  /// Constructs a [AssignPrivateNatGatewayAddressResult] from a [payload] and [response].
  factory AssignPrivateNatGatewayAddressResult.fromResponse(
    AssignPrivateNatGatewayAddressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<AssignPrivateNatGatewayAddressResult>>
      serializers = [AssignPrivateNatGatewayAddressResultEc2QuerySerializer()];

  /// The ID of the NAT gateway.
  String? get natGatewayId;

  /// NAT gateway IP addresses.
  _i2.BuiltList<NatGatewayAddress>? get natGatewayAddresses;
  @override
  List<Object?> get props => [
        natGatewayId,
        natGatewayAddresses,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssignPrivateNatGatewayAddressResult')
          ..add(
            'natGatewayId',
            natGatewayId,
          )
          ..add(
            'natGatewayAddresses',
            natGatewayAddresses,
          );
    return helper.toString();
  }
}

class AssignPrivateNatGatewayAddressResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AssignPrivateNatGatewayAddressResult> {
  const AssignPrivateNatGatewayAddressResultEc2QuerySerializer()
      : super('AssignPrivateNatGatewayAddressResult');

  @override
  Iterable<Type> get types => const [
        AssignPrivateNatGatewayAddressResult,
        _$AssignPrivateNatGatewayAddressResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignPrivateNatGatewayAddressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignPrivateNatGatewayAddressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'natGatewayId':
          result.natGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGatewayAddressSet':
          result.natGatewayAddresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NatGatewayAddress)],
            ),
          ) as _i2.BuiltList<NatGatewayAddress>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssignPrivateNatGatewayAddressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssignPrivateNatGatewayAddressResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignPrivateNatGatewayAddressResult(
      :natGatewayId,
      :natGatewayAddresses
    ) = object;
    if (natGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (natGatewayAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('NatGatewayAddressSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          natGatewayAddresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(NatGatewayAddress)],
          ),
        ));
    }
    return result$;
  }
}
