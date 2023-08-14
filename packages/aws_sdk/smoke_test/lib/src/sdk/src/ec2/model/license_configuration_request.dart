// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.license_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'license_configuration_request.g.dart';

/// Describes a license configuration.
abstract class LicenseConfigurationRequest
    with _i1.AWSEquatable<LicenseConfigurationRequest>
    implements
        Built<LicenseConfigurationRequest, LicenseConfigurationRequestBuilder> {
  /// Describes a license configuration.
  factory LicenseConfigurationRequest({String? licenseConfigurationArn}) {
    return _$LicenseConfigurationRequest._(
        licenseConfigurationArn: licenseConfigurationArn);
  }

  /// Describes a license configuration.
  factory LicenseConfigurationRequest.build(
          [void Function(LicenseConfigurationRequestBuilder) updates]) =
      _$LicenseConfigurationRequest;

  const LicenseConfigurationRequest._();

  static const List<_i2.SmithySerializer<LicenseConfigurationRequest>>
      serializers = [LicenseConfigurationRequestEc2QuerySerializer()];

  /// The Amazon Resource Name (ARN) of the license configuration.
  String? get licenseConfigurationArn;
  @override
  List<Object?> get props => [licenseConfigurationArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LicenseConfigurationRequest')
      ..add(
        'licenseConfigurationArn',
        licenseConfigurationArn,
      );
    return helper.toString();
  }
}

class LicenseConfigurationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LicenseConfigurationRequest> {
  const LicenseConfigurationRequestEc2QuerySerializer()
      : super('LicenseConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        LicenseConfigurationRequest,
        _$LicenseConfigurationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LicenseConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LicenseConfigurationArn':
          result.licenseConfigurationArn = (serializers.deserialize(
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
    LicenseConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LicenseConfigurationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LicenseConfigurationRequest(:licenseConfigurationArn) = object;
    if (licenseConfigurationArn != null) {
      result$
        ..add(const _i2.XmlElementName('LicenseConfigurationArn'))
        ..add(serializers.serialize(
          licenseConfigurationArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
