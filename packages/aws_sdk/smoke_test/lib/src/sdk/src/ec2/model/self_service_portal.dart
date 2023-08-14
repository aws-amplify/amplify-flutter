// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.self_service_portal; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SelfServicePortal extends _i1.SmithyEnum<SelfServicePortal> {
  const SelfServicePortal._(
    super.index,
    super.name,
    super.value,
  );

  const SelfServicePortal._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = SelfServicePortal._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = SelfServicePortal._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [SelfServicePortal].
  static const values = <SelfServicePortal>[
    SelfServicePortal.disabled,
    SelfServicePortal.enabled,
  ];

  static const List<_i1.SmithySerializer<SelfServicePortal>> serializers = [
    _i1.SmithyEnumSerializer(
      'SelfServicePortal',
      values: values,
      sdkUnknown: SelfServicePortal._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SelfServicePortalHelpers on List<SelfServicePortal> {
  /// Returns the value of [SelfServicePortal] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SelfServicePortal byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SelfServicePortal] whose value matches [value].
  SelfServicePortal byValue(String value) =>
      firstWhere((el) => el.value == value);
}
