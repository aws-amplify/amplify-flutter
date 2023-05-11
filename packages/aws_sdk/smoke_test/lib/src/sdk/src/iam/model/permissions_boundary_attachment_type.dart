// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.permissions_boundary_attachment_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PermissionsBoundaryAttachmentType
    extends _i1.SmithyEnum<PermissionsBoundaryAttachmentType> {
  const PermissionsBoundaryAttachmentType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PermissionsBoundaryAttachmentType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const policy = PermissionsBoundaryAttachmentType._(
    0,
    'Policy',
    'PermissionsBoundaryPolicy',
  );

  /// All values of [PermissionsBoundaryAttachmentType].
  static const values = <PermissionsBoundaryAttachmentType>[
    PermissionsBoundaryAttachmentType.policy
  ];

  static const List<_i1.SmithySerializer<PermissionsBoundaryAttachmentType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'PermissionsBoundaryAttachmentType',
      values: values,
      sdkUnknown: PermissionsBoundaryAttachmentType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PermissionsBoundaryAttachmentTypeHelpers
    on List<PermissionsBoundaryAttachmentType> {
  /// Returns the value of [PermissionsBoundaryAttachmentType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PermissionsBoundaryAttachmentType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PermissionsBoundaryAttachmentType] whose value matches [value].
  PermissionsBoundaryAttachmentType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
