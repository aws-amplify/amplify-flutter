// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_vpc_peering_connection_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart';

part 'accept_vpc_peering_connection_result.g.dart';

abstract class AcceptVpcPeeringConnectionResult
    with
        _i1.AWSEquatable<AcceptVpcPeeringConnectionResult>
    implements
        Built<AcceptVpcPeeringConnectionResult,
            AcceptVpcPeeringConnectionResultBuilder> {
  factory AcceptVpcPeeringConnectionResult(
      {VpcPeeringConnection? vpcPeeringConnection}) {
    return _$AcceptVpcPeeringConnectionResult._(
        vpcPeeringConnection: vpcPeeringConnection);
  }

  factory AcceptVpcPeeringConnectionResult.build(
          [void Function(AcceptVpcPeeringConnectionResultBuilder) updates]) =
      _$AcceptVpcPeeringConnectionResult;

  const AcceptVpcPeeringConnectionResult._();

  /// Constructs a [AcceptVpcPeeringConnectionResult] from a [payload] and [response].
  factory AcceptVpcPeeringConnectionResult.fromResponse(
    AcceptVpcPeeringConnectionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AcceptVpcPeeringConnectionResult>>
      serializers = [AcceptVpcPeeringConnectionResultEc2QuerySerializer()];

  /// Information about the VPC peering connection.
  VpcPeeringConnection? get vpcPeeringConnection;
  @override
  List<Object?> get props => [vpcPeeringConnection];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AcceptVpcPeeringConnectionResult')
          ..add(
            'vpcPeeringConnection',
            vpcPeeringConnection,
          );
    return helper.toString();
  }
}

class AcceptVpcPeeringConnectionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AcceptVpcPeeringConnectionResult> {
  const AcceptVpcPeeringConnectionResultEc2QuerySerializer()
      : super('AcceptVpcPeeringConnectionResult');

  @override
  Iterable<Type> get types => const [
        AcceptVpcPeeringConnectionResult,
        _$AcceptVpcPeeringConnectionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptVpcPeeringConnectionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptVpcPeeringConnectionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpcPeeringConnection':
          result.vpcPeeringConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcPeeringConnection),
          ) as VpcPeeringConnection));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AcceptVpcPeeringConnectionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AcceptVpcPeeringConnectionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptVpcPeeringConnectionResult(:vpcPeeringConnection) = object;
    if (vpcPeeringConnection != null) {
      result$
        ..add(const _i2.XmlElementName('VpcPeeringConnection'))
        ..add(serializers.serialize(
          vpcPeeringConnection,
          specifiedType: const FullType(VpcPeeringConnection),
        ));
    }
    return result$;
  }
}
