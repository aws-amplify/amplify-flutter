// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpn_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_gateway.dart';

part 'create_vpn_gateway_result.g.dart';

/// Contains the output of CreateVpnGateway.
abstract class CreateVpnGatewayResult
    with _i1.AWSEquatable<CreateVpnGatewayResult>
    implements Built<CreateVpnGatewayResult, CreateVpnGatewayResultBuilder> {
  /// Contains the output of CreateVpnGateway.
  factory CreateVpnGatewayResult({VpnGateway? vpnGateway}) {
    return _$CreateVpnGatewayResult._(vpnGateway: vpnGateway);
  }

  /// Contains the output of CreateVpnGateway.
  factory CreateVpnGatewayResult.build(
          [void Function(CreateVpnGatewayResultBuilder) updates]) =
      _$CreateVpnGatewayResult;

  const CreateVpnGatewayResult._();

  /// Constructs a [CreateVpnGatewayResult] from a [payload] and [response].
  factory CreateVpnGatewayResult.fromResponse(
    CreateVpnGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVpnGatewayResult>> serializers =
      [CreateVpnGatewayResultEc2QuerySerializer()];

  /// Information about the virtual private gateway.
  VpnGateway? get vpnGateway;
  @override
  List<Object?> get props => [vpnGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpnGatewayResult')
      ..add(
        'vpnGateway',
        vpnGateway,
      );
    return helper.toString();
  }
}

class CreateVpnGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVpnGatewayResult> {
  const CreateVpnGatewayResultEc2QuerySerializer()
      : super('CreateVpnGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateVpnGatewayResult,
        _$CreateVpnGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnGateway':
          result.vpnGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpnGateway),
          ) as VpnGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpnGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpnGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpnGatewayResult(:vpnGateway) = object;
    if (vpnGateway != null) {
      result$
        ..add(const _i2.XmlElementName('VpnGateway'))
        ..add(serializers.serialize(
          vpnGateway,
          specifiedType: const FullType(VpnGateway),
        ));
    }
    return result$;
  }
}
