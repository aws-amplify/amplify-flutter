// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.expiration_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExpirationStatus extends _i1.SmithyEnum<ExpirationStatus> {
  const ExpirationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExpirationStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disabled = ExpirationStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = ExpirationStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [ExpirationStatus].
  static const values = <ExpirationStatus>[
    ExpirationStatus.disabled,
    ExpirationStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<ExpirationStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExpirationStatus',
      values: values,
      sdkUnknown: ExpirationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ExpirationStatusHelpers on List<ExpirationStatus> {
  /// Returns the value of [ExpirationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExpirationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExpirationStatus] whose value matches [value].
  ExpirationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
