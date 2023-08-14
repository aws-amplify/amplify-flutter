// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_nat_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart';

part 'create_nat_gateway_result.g.dart';

abstract class CreateNatGatewayResult
    with _i1.AWSEquatable<CreateNatGatewayResult>
    implements Built<CreateNatGatewayResult, CreateNatGatewayResultBuilder> {
  factory CreateNatGatewayResult({
    String? clientToken,
    NatGateway? natGateway,
  }) {
    return _$CreateNatGatewayResult._(
      clientToken: clientToken,
      natGateway: natGateway,
    );
  }

  factory CreateNatGatewayResult.build(
          [void Function(CreateNatGatewayResultBuilder) updates]) =
      _$CreateNatGatewayResult;

  const CreateNatGatewayResult._();

  /// Constructs a [CreateNatGatewayResult] from a [payload] and [response].
  factory CreateNatGatewayResult.fromResponse(
    CreateNatGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateNatGatewayResult>> serializers =
      [CreateNatGatewayResultEc2QuerySerializer()];

  /// Unique, case-sensitive identifier to ensure the idempotency of the request. Only returned if a client token was provided in the request.
  String? get clientToken;

  /// Information about the NAT gateway.
  NatGateway? get natGateway;
  @override
  List<Object?> get props => [
        clientToken,
        natGateway,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNatGatewayResult')
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'natGateway',
        natGateway,
      );
    return helper.toString();
  }
}

class CreateNatGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateNatGatewayResult> {
  const CreateNatGatewayResultEc2QuerySerializer()
      : super('CreateNatGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateNatGatewayResult,
        _$CreateNatGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNatGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNatGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGateway':
          result.natGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NatGateway),
          ) as NatGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateNatGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateNatGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNatGatewayResult(:clientToken, :natGateway) = object;
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (natGateway != null) {
      result$
        ..add(const _i2.XmlElementName('NatGateway'))
        ..add(serializers.serialize(
          natGateway,
          specifiedType: const FullType(NatGateway),
        ));
    }
    return result$;
  }
}
