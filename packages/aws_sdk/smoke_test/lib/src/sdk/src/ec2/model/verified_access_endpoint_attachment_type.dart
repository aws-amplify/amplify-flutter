// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint_attachment_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VerifiedAccessEndpointAttachmentType
    extends _i1.SmithyEnum<VerifiedAccessEndpointAttachmentType> {
  const VerifiedAccessEndpointAttachmentType._(
    super.index,
    super.name,
    super.value,
  );

  const VerifiedAccessEndpointAttachmentType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const vpc = VerifiedAccessEndpointAttachmentType._(
    0,
    'vpc',
    'vpc',
  );

  /// All values of [VerifiedAccessEndpointAttachmentType].
  static const values = <VerifiedAccessEndpointAttachmentType>[
    VerifiedAccessEndpointAttachmentType.vpc
  ];

  static const List<_i1.SmithySerializer<VerifiedAccessEndpointAttachmentType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'VerifiedAccessEndpointAttachmentType',
      values: values,
      sdkUnknown: VerifiedAccessEndpointAttachmentType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VerifiedAccessEndpointAttachmentTypeHelpers
    on List<VerifiedAccessEndpointAttachmentType> {
  /// Returns the value of [VerifiedAccessEndpointAttachmentType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VerifiedAccessEndpointAttachmentType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VerifiedAccessEndpointAttachmentType] whose value matches [value].
  VerifiedAccessEndpointAttachmentType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
