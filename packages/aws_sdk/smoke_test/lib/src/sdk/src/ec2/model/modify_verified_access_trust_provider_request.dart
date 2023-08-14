// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_trust_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_trust_provider_oidc_options.dart';

part 'modify_verified_access_trust_provider_request.g.dart';

abstract class ModifyVerifiedAccessTrustProviderRequest
    with
        _i1.HttpInput<ModifyVerifiedAccessTrustProviderRequest>,
        _i2.AWSEquatable<ModifyVerifiedAccessTrustProviderRequest>
    implements
        Built<ModifyVerifiedAccessTrustProviderRequest,
            ModifyVerifiedAccessTrustProviderRequestBuilder> {
  factory ModifyVerifiedAccessTrustProviderRequest({
    String? verifiedAccessTrustProviderId,
    ModifyVerifiedAccessTrustProviderOidcOptions? oidcOptions,
    String? description,
    bool? dryRun,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$ModifyVerifiedAccessTrustProviderRequest._(
      verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
      oidcOptions: oidcOptions,
      description: description,
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory ModifyVerifiedAccessTrustProviderRequest.build(
      [void Function(ModifyVerifiedAccessTrustProviderRequestBuilder)
          updates]) = _$ModifyVerifiedAccessTrustProviderRequest;

  const ModifyVerifiedAccessTrustProviderRequest._();

  factory ModifyVerifiedAccessTrustProviderRequest.fromRequest(
    ModifyVerifiedAccessTrustProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyVerifiedAccessTrustProviderRequest>>
      serializers = [
    ModifyVerifiedAccessTrustProviderRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVerifiedAccessTrustProviderRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the Verified Access trust provider.
  String? get verifiedAccessTrustProviderId;

  /// The options for an OpenID Connect-compatible user-identity trust provider.
  ModifyVerifiedAccessTrustProviderOidcOptions? get oidcOptions;

  /// A description for the Verified Access trust provider.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  ModifyVerifiedAccessTrustProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessTrustProviderId,
        oidcOptions,
        description,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessTrustProviderRequest')
          ..add(
            'verifiedAccessTrustProviderId',
            verifiedAccessTrustProviderId,
          )
          ..add(
            'oidcOptions',
            oidcOptions,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class ModifyVerifiedAccessTrustProviderRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVerifiedAccessTrustProviderRequest> {
  const ModifyVerifiedAccessTrustProviderRequestEc2QuerySerializer()
      : super('ModifyVerifiedAccessTrustProviderRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessTrustProviderRequest,
        _$ModifyVerifiedAccessTrustProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessTrustProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessTrustProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessTrustProviderId':
          result.verifiedAccessTrustProviderId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OidcOptions':
          result.oidcOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(ModifyVerifiedAccessTrustProviderOidcOptions),
          ) as ModifyVerifiedAccessTrustProviderOidcOptions));
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    ModifyVerifiedAccessTrustProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVerifiedAccessTrustProviderRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessTrustProviderRequest(
      :verifiedAccessTrustProviderId,
      :oidcOptions,
      :description,
      :dryRun,
      :clientToken
    ) = object;
    if (verifiedAccessTrustProviderId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessTrustProviderId'))
        ..add(serializers.serialize(
          verifiedAccessTrustProviderId,
          specifiedType: const FullType(String),
        ));
    }
    if (oidcOptions != null) {
      result$
        ..add(const _i1.XmlElementName('OidcOptions'))
        ..add(serializers.serialize(
          oidcOptions,
          specifiedType:
              const FullType(ModifyVerifiedAccessTrustProviderOidcOptions),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
