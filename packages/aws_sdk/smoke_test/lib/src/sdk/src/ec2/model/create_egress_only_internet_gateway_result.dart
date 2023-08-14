// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_egress_only_internet_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/egress_only_internet_gateway.dart';

part 'create_egress_only_internet_gateway_result.g.dart';

abstract class CreateEgressOnlyInternetGatewayResult
    with
        _i1.AWSEquatable<CreateEgressOnlyInternetGatewayResult>
    implements
        Built<CreateEgressOnlyInternetGatewayResult,
            CreateEgressOnlyInternetGatewayResultBuilder> {
  factory CreateEgressOnlyInternetGatewayResult({
    String? clientToken,
    EgressOnlyInternetGateway? egressOnlyInternetGateway,
  }) {
    return _$CreateEgressOnlyInternetGatewayResult._(
      clientToken: clientToken,
      egressOnlyInternetGateway: egressOnlyInternetGateway,
    );
  }

  factory CreateEgressOnlyInternetGatewayResult.build(
      [void Function(CreateEgressOnlyInternetGatewayResultBuilder)
          updates]) = _$CreateEgressOnlyInternetGatewayResult;

  const CreateEgressOnlyInternetGatewayResult._();

  /// Constructs a [CreateEgressOnlyInternetGatewayResult] from a [payload] and [response].
  factory CreateEgressOnlyInternetGatewayResult.fromResponse(
    CreateEgressOnlyInternetGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateEgressOnlyInternetGatewayResult>>
      serializers = [CreateEgressOnlyInternetGatewayResultEc2QuerySerializer()];

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;

  /// Information about the egress-only internet gateway.
  EgressOnlyInternetGateway? get egressOnlyInternetGateway;
  @override
  List<Object?> get props => [
        clientToken,
        egressOnlyInternetGateway,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateEgressOnlyInternetGatewayResult')
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'egressOnlyInternetGateway',
            egressOnlyInternetGateway,
          );
    return helper.toString();
  }
}

class CreateEgressOnlyInternetGatewayResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateEgressOnlyInternetGatewayResult> {
  const CreateEgressOnlyInternetGatewayResultEc2QuerySerializer()
      : super('CreateEgressOnlyInternetGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateEgressOnlyInternetGatewayResult,
        _$CreateEgressOnlyInternetGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateEgressOnlyInternetGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEgressOnlyInternetGatewayResultBuilder();
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
        case 'egressOnlyInternetGateway':
          result.egressOnlyInternetGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EgressOnlyInternetGateway),
          ) as EgressOnlyInternetGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateEgressOnlyInternetGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateEgressOnlyInternetGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateEgressOnlyInternetGatewayResult(
      :clientToken,
      :egressOnlyInternetGateway
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (egressOnlyInternetGateway != null) {
      result$
        ..add(const _i2.XmlElementName('EgressOnlyInternetGateway'))
        ..add(serializers.serialize(
          egressOnlyInternetGateway,
          specifiedType: const FullType(EgressOnlyInternetGateway),
        ));
    }
    return result$;
  }
}
