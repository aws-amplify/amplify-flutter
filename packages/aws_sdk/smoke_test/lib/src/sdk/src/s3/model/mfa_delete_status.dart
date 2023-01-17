// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.mfa_delete_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MfaDeleteStatus extends _i1.SmithyEnum<MfaDeleteStatus> {
  const MfaDeleteStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const MfaDeleteStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disabled = MfaDeleteStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = MfaDeleteStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [MfaDeleteStatus].
  static const values = <MfaDeleteStatus>[
    MfaDeleteStatus.disabled,
    MfaDeleteStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<MfaDeleteStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'MFADeleteStatus',
      values: values,
      sdkUnknown: MfaDeleteStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension MfaDeleteStatusHelpers on List<MfaDeleteStatus> {
  /// Returns the value of [MfaDeleteStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MfaDeleteStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MfaDeleteStatus] whose value matches [value].
  MfaDeleteStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
