// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.intelligent_tiering_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IntelligentTieringStatus
    extends _i1.SmithyEnum<IntelligentTieringStatus> {
  const IntelligentTieringStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const IntelligentTieringStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = IntelligentTieringStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = IntelligentTieringStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [IntelligentTieringStatus].
  static const values = <IntelligentTieringStatus>[
    IntelligentTieringStatus.disabled,
    IntelligentTieringStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<IntelligentTieringStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IntelligentTieringStatus',
      values: values,
      sdkUnknown: IntelligentTieringStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension IntelligentTieringStatusHelpers on List<IntelligentTieringStatus> {
  /// Returns the value of [IntelligentTieringStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IntelligentTieringStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IntelligentTieringStatus] whose value matches [value].
  IntelligentTieringStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
