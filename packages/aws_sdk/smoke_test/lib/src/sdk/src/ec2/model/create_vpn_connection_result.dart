// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpn_connection_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart';

part 'create_vpn_connection_result.g.dart';

/// Contains the output of CreateVpnConnection.
abstract class CreateVpnConnectionResult
    with _i1.AWSEquatable<CreateVpnConnectionResult>
    implements
        Built<CreateVpnConnectionResult, CreateVpnConnectionResultBuilder> {
  /// Contains the output of CreateVpnConnection.
  factory CreateVpnConnectionResult({VpnConnection? vpnConnection}) {
    return _$CreateVpnConnectionResult._(vpnConnection: vpnConnection);
  }

  /// Contains the output of CreateVpnConnection.
  factory CreateVpnConnectionResult.build(
          [void Function(CreateVpnConnectionResultBuilder) updates]) =
      _$CreateVpnConnectionResult;

  const CreateVpnConnectionResult._();

  /// Constructs a [CreateVpnConnectionResult] from a [payload] and [response].
  factory CreateVpnConnectionResult.fromResponse(
    CreateVpnConnectionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVpnConnectionResult>>
      serializers = [CreateVpnConnectionResultEc2QuerySerializer()];

  /// Information about the VPN connection.
  VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpnConnectionResult')
      ..add(
        'vpnConnection',
        vpnConnection,
      );
    return helper.toString();
  }
}

class CreateVpnConnectionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVpnConnectionResult> {
  const CreateVpnConnectionResultEc2QuerySerializer()
      : super('CreateVpnConnectionResult');

  @override
  Iterable<Type> get types => const [
        CreateVpnConnectionResult,
        _$CreateVpnConnectionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnConnectionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnConnectionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnConnection':
          result.vpnConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpnConnection),
          ) as VpnConnection));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpnConnectionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpnConnectionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpnConnectionResult(:vpnConnection) = object;
    if (vpnConnection != null) {
      result$
        ..add(const _i2.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          vpnConnection,
          specifiedType: const FullType(VpnConnection),
        ));
    }
    return result$;
  }
}
