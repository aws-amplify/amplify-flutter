// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication.dart';

part 'client_vpn_authentication.g.dart';

/// Describes the authentication methods used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/client-authentication.html) in the _Client VPN Administrator Guide_.
abstract class ClientVpnAuthentication
    with _i1.AWSEquatable<ClientVpnAuthentication>
    implements Built<ClientVpnAuthentication, ClientVpnAuthenticationBuilder> {
  /// Describes the authentication methods used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/client-authentication.html) in the _Client VPN Administrator Guide_.
  factory ClientVpnAuthentication({
    ClientVpnAuthenticationType? type,
    DirectoryServiceAuthentication? activeDirectory,
    CertificateAuthentication? mutualAuthentication,
    FederatedAuthentication? federatedAuthentication,
  }) {
    return _$ClientVpnAuthentication._(
      type: type,
      activeDirectory: activeDirectory,
      mutualAuthentication: mutualAuthentication,
      federatedAuthentication: federatedAuthentication,
    );
  }

  /// Describes the authentication methods used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/client-authentication.html) in the _Client VPN Administrator Guide_.
  factory ClientVpnAuthentication.build(
          [void Function(ClientVpnAuthenticationBuilder) updates]) =
      _$ClientVpnAuthentication;

  const ClientVpnAuthentication._();

  static const List<_i2.SmithySerializer<ClientVpnAuthentication>> serializers =
      [ClientVpnAuthenticationEc2QuerySerializer()];

  /// The authentication type used.
  ClientVpnAuthenticationType? get type;

  /// Information about the Active Directory, if applicable.
  DirectoryServiceAuthentication? get activeDirectory;

  /// Information about the authentication certificates, if applicable.
  CertificateAuthentication? get mutualAuthentication;

  /// Information about the IAM SAML identity provider, if applicable.
  FederatedAuthentication? get federatedAuthentication;
  @override
  List<Object?> get props => [
        type,
        activeDirectory,
        mutualAuthentication,
        federatedAuthentication,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnAuthentication')
      ..add(
        'type',
        type,
      )
      ..add(
        'activeDirectory',
        activeDirectory,
      )
      ..add(
        'mutualAuthentication',
        mutualAuthentication,
      )
      ..add(
        'federatedAuthentication',
        federatedAuthentication,
      );
    return helper.toString();
  }
}

class ClientVpnAuthenticationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientVpnAuthentication> {
  const ClientVpnAuthenticationEc2QuerySerializer()
      : super('ClientVpnAuthentication');

  @override
  Iterable<Type> get types => const [
        ClientVpnAuthentication,
        _$ClientVpnAuthentication,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnAuthenticationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnAuthenticationType),
          ) as ClientVpnAuthenticationType);
        case 'activeDirectory':
          result.activeDirectory.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DirectoryServiceAuthentication),
          ) as DirectoryServiceAuthentication));
        case 'mutualAuthentication':
          result.mutualAuthentication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CertificateAuthentication),
          ) as CertificateAuthentication));
        case 'federatedAuthentication':
          result.federatedAuthentication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FederatedAuthentication),
          ) as FederatedAuthentication));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientVpnAuthentication object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientVpnAuthenticationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnAuthentication(
      :type,
      :activeDirectory,
      :mutualAuthentication,
      :federatedAuthentication
    ) = object;
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(ClientVpnAuthenticationType),
        ));
    }
    if (activeDirectory != null) {
      result$
        ..add(const _i2.XmlElementName('ActiveDirectory'))
        ..add(serializers.serialize(
          activeDirectory,
          specifiedType: const FullType(DirectoryServiceAuthentication),
        ));
    }
    if (mutualAuthentication != null) {
      result$
        ..add(const _i2.XmlElementName('MutualAuthentication'))
        ..add(serializers.serialize(
          mutualAuthentication,
          specifiedType: const FullType(CertificateAuthentication),
        ));
    }
    if (federatedAuthentication != null) {
      result$
        ..add(const _i2.XmlElementName('FederatedAuthentication'))
        ..add(serializers.serialize(
          federatedAuthentication,
          specifiedType: const FullType(FederatedAuthentication),
        ));
    }
    return result$;
  }
}
