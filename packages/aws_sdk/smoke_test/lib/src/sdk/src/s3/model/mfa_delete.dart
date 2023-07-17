// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.mfa_delete; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MfaDelete extends _i1.SmithyEnum<MfaDelete> {
  const MfaDelete._(
    super.index,
    super.name,
    super.value,
  );

  const MfaDelete._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = MfaDelete._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = MfaDelete._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [MfaDelete].
  static const values = <MfaDelete>[
    MfaDelete.disabled,
    MfaDelete.enabled,
  ];

  static const List<_i1.SmithySerializer<MfaDelete>> serializers = [
    _i1.SmithyEnumSerializer(
      'MFADelete',
      values: values,
      sdkUnknown: MfaDelete._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension MfaDeleteHelpers on List<MfaDelete> {
  /// Returns the value of [MfaDelete] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MfaDelete byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MfaDelete] whose value matches [value].
  MfaDelete byValue(String value) => firstWhere((el) => el.value == value);
}
