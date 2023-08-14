// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_peering_connection_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart';

part 'create_vpc_peering_connection_result.g.dart';

abstract class CreateVpcPeeringConnectionResult
    with
        _i1.AWSEquatable<CreateVpcPeeringConnectionResult>
    implements
        Built<CreateVpcPeeringConnectionResult,
            CreateVpcPeeringConnectionResultBuilder> {
  factory CreateVpcPeeringConnectionResult(
      {VpcPeeringConnection? vpcPeeringConnection}) {
    return _$CreateVpcPeeringConnectionResult._(
        vpcPeeringConnection: vpcPeeringConnection);
  }

  factory CreateVpcPeeringConnectionResult.build(
          [void Function(CreateVpcPeeringConnectionResultBuilder) updates]) =
      _$CreateVpcPeeringConnectionResult;

  const CreateVpcPeeringConnectionResult._();

  /// Constructs a [CreateVpcPeeringConnectionResult] from a [payload] and [response].
  factory CreateVpcPeeringConnectionResult.fromResponse(
    CreateVpcPeeringConnectionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVpcPeeringConnectionResult>>
      serializers = [CreateVpcPeeringConnectionResultEc2QuerySerializer()];

  /// Information about the VPC peering connection.
  VpcPeeringConnection? get vpcPeeringConnection;
  @override
  List<Object?> get props => [vpcPeeringConnection];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVpcPeeringConnectionResult')
          ..add(
            'vpcPeeringConnection',
            vpcPeeringConnection,
          );
    return helper.toString();
  }
}

class CreateVpcPeeringConnectionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVpcPeeringConnectionResult> {
  const CreateVpcPeeringConnectionResultEc2QuerySerializer()
      : super('CreateVpcPeeringConnectionResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcPeeringConnectionResult,
        _$CreateVpcPeeringConnectionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcPeeringConnectionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcPeeringConnectionResultBuilder();
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
    CreateVpcPeeringConnectionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpcPeeringConnectionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcPeeringConnectionResult(:vpcPeeringConnection) = object;
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
