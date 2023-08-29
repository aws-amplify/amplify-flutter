// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_trust_provider_device_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_verified_access_trust_provider_device_options.g.dart';

/// Describes the options when creating an Amazon Web Services Verified Access trust provider using the `device` type.
abstract class CreateVerifiedAccessTrustProviderDeviceOptions
    with
        _i1.AWSEquatable<CreateVerifiedAccessTrustProviderDeviceOptions>
    implements
        Built<CreateVerifiedAccessTrustProviderDeviceOptions,
            CreateVerifiedAccessTrustProviderDeviceOptionsBuilder> {
  /// Describes the options when creating an Amazon Web Services Verified Access trust provider using the `device` type.
  factory CreateVerifiedAccessTrustProviderDeviceOptions({String? tenantId}) {
    return _$CreateVerifiedAccessTrustProviderDeviceOptions._(
        tenantId: tenantId);
  }

  /// Describes the options when creating an Amazon Web Services Verified Access trust provider using the `device` type.
  factory CreateVerifiedAccessTrustProviderDeviceOptions.build(
      [void Function(CreateVerifiedAccessTrustProviderDeviceOptionsBuilder)
          updates]) = _$CreateVerifiedAccessTrustProviderDeviceOptions;

  const CreateVerifiedAccessTrustProviderDeviceOptions._();

  static const List<
          _i2.SmithySerializer<CreateVerifiedAccessTrustProviderDeviceOptions>>
      serializers = [
    CreateVerifiedAccessTrustProviderDeviceOptionsEc2QuerySerializer()
  ];

  /// The ID of the tenant application with the device-identity provider.
  String? get tenantId;
  @override
  List<Object?> get props => [tenantId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVerifiedAccessTrustProviderDeviceOptions')
      ..add(
        'tenantId',
        tenantId,
      );
    return helper.toString();
  }
}

class CreateVerifiedAccessTrustProviderDeviceOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        CreateVerifiedAccessTrustProviderDeviceOptions> {
  const CreateVerifiedAccessTrustProviderDeviceOptionsEc2QuerySerializer()
      : super('CreateVerifiedAccessTrustProviderDeviceOptions');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessTrustProviderDeviceOptions,
        _$CreateVerifiedAccessTrustProviderDeviceOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessTrustProviderDeviceOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessTrustProviderDeviceOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TenantId':
          result.tenantId = (serializers.deserialize(
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
    CreateVerifiedAccessTrustProviderDeviceOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVerifiedAccessTrustProviderDeviceOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessTrustProviderDeviceOptions(:tenantId) = object;
    if (tenantId != null) {
      result$
        ..add(const _i2.XmlElementName('TenantId'))
        ..add(serializers.serialize(
          tenantId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
