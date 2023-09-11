// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_trust_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_device_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_oidc_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/device_trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_trust_provider_type.dart';

part 'create_verified_access_trust_provider_request.g.dart';

abstract class CreateVerifiedAccessTrustProviderRequest
    with
        _i1.HttpInput<CreateVerifiedAccessTrustProviderRequest>,
        _i2.AWSEquatable<CreateVerifiedAccessTrustProviderRequest>
    implements
        Built<CreateVerifiedAccessTrustProviderRequest,
            CreateVerifiedAccessTrustProviderRequestBuilder> {
  factory CreateVerifiedAccessTrustProviderRequest({
    TrustProviderType? trustProviderType,
    UserTrustProviderType? userTrustProviderType,
    DeviceTrustProviderType? deviceTrustProviderType,
    CreateVerifiedAccessTrustProviderOidcOptions? oidcOptions,
    CreateVerifiedAccessTrustProviderDeviceOptions? deviceOptions,
    String? policyReferenceName,
    String? description,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateVerifiedAccessTrustProviderRequest._(
      trustProviderType: trustProviderType,
      userTrustProviderType: userTrustProviderType,
      deviceTrustProviderType: deviceTrustProviderType,
      oidcOptions: oidcOptions,
      deviceOptions: deviceOptions,
      policyReferenceName: policyReferenceName,
      description: description,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory CreateVerifiedAccessTrustProviderRequest.build(
      [void Function(CreateVerifiedAccessTrustProviderRequestBuilder)
          updates]) = _$CreateVerifiedAccessTrustProviderRequest;

  const CreateVerifiedAccessTrustProviderRequest._();

  factory CreateVerifiedAccessTrustProviderRequest.fromRequest(
    CreateVerifiedAccessTrustProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateVerifiedAccessTrustProviderRequest>>
      serializers = [
    CreateVerifiedAccessTrustProviderRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVerifiedAccessTrustProviderRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The type of trust provider.
  TrustProviderType? get trustProviderType;

  /// The type of user-based trust provider. This parameter is required when the provider type is `user`.
  UserTrustProviderType? get userTrustProviderType;

  /// The type of device-based trust provider. This parameter is required when the provider type is `device`.
  DeviceTrustProviderType? get deviceTrustProviderType;

  /// The options for a OpenID Connect-compatible user-identity trust provider. This parameter is required when the provider type is `user`.
  CreateVerifiedAccessTrustProviderOidcOptions? get oidcOptions;

  /// The options for a device-based trust provider. This parameter is required when the provider type is `device`.
  CreateVerifiedAccessTrustProviderDeviceOptions? get deviceOptions;

  /// The identifier to be used when working with policy rules.
  String? get policyReferenceName;

  /// A description for the Verified Access trust provider.
  String? get description;

  /// The tags to assign to the Verified Access trust provider.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateVerifiedAccessTrustProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trustProviderType,
        userTrustProviderType,
        deviceTrustProviderType,
        oidcOptions,
        deviceOptions,
        policyReferenceName,
        description,
        tagSpecifications,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessTrustProviderRequest')
          ..add(
            'trustProviderType',
            trustProviderType,
          )
          ..add(
            'userTrustProviderType',
            userTrustProviderType,
          )
          ..add(
            'deviceTrustProviderType',
            deviceTrustProviderType,
          )
          ..add(
            'oidcOptions',
            oidcOptions,
          )
          ..add(
            'deviceOptions',
            deviceOptions,
          )
          ..add(
            'policyReferenceName',
            policyReferenceName,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessTrustProviderRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateVerifiedAccessTrustProviderRequest> {
  const CreateVerifiedAccessTrustProviderRequestEc2QuerySerializer()
      : super('CreateVerifiedAccessTrustProviderRequest');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessTrustProviderRequest,
        _$CreateVerifiedAccessTrustProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessTrustProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessTrustProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrustProviderType':
          result.trustProviderType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TrustProviderType),
          ) as TrustProviderType);
        case 'UserTrustProviderType':
          result.userTrustProviderType = (serializers.deserialize(
            value,
            specifiedType: const FullType(UserTrustProviderType),
          ) as UserTrustProviderType);
        case 'DeviceTrustProviderType':
          result.deviceTrustProviderType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceTrustProviderType),
          ) as DeviceTrustProviderType);
        case 'OidcOptions':
          result.oidcOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateVerifiedAccessTrustProviderOidcOptions),
          ) as CreateVerifiedAccessTrustProviderOidcOptions));
        case 'DeviceOptions':
          result.deviceOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateVerifiedAccessTrustProviderDeviceOptions),
          ) as CreateVerifiedAccessTrustProviderDeviceOptions));
        case 'PolicyReferenceName':
          result.policyReferenceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVerifiedAccessTrustProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVerifiedAccessTrustProviderRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessTrustProviderRequest(
      :trustProviderType,
      :userTrustProviderType,
      :deviceTrustProviderType,
      :oidcOptions,
      :deviceOptions,
      :policyReferenceName,
      :description,
      :tagSpecifications,
      :clientToken,
      :dryRun
    ) = object;
    if (trustProviderType != null) {
      result$
        ..add(const _i1.XmlElementName('TrustProviderType'))
        ..add(serializers.serialize(
          trustProviderType,
          specifiedType: const FullType(TrustProviderType),
        ));
    }
    if (userTrustProviderType != null) {
      result$
        ..add(const _i1.XmlElementName('UserTrustProviderType'))
        ..add(serializers.serialize(
          userTrustProviderType,
          specifiedType: const FullType(UserTrustProviderType),
        ));
    }
    if (deviceTrustProviderType != null) {
      result$
        ..add(const _i1.XmlElementName('DeviceTrustProviderType'))
        ..add(serializers.serialize(
          deviceTrustProviderType,
          specifiedType: const FullType(DeviceTrustProviderType),
        ));
    }
    if (oidcOptions != null) {
      result$
        ..add(const _i1.XmlElementName('OidcOptions'))
        ..add(serializers.serialize(
          oidcOptions,
          specifiedType:
              const FullType(CreateVerifiedAccessTrustProviderOidcOptions),
        ));
    }
    if (deviceOptions != null) {
      result$
        ..add(const _i1.XmlElementName('DeviceOptions'))
        ..add(serializers.serialize(
          deviceOptions,
          specifiedType:
              const FullType(CreateVerifiedAccessTrustProviderDeviceOptions),
        ));
    }
    if (policyReferenceName != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyReferenceName'))
        ..add(serializers.serialize(
          policyReferenceName,
          specifiedType: const FullType(String),
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
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
