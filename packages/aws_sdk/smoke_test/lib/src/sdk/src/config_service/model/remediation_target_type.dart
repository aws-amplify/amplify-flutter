// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_target_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RemediationTargetType extends _i1.SmithyEnum<RemediationTargetType> {
  const RemediationTargetType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RemediationTargetType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const ssmDocument = RemediationTargetType._(
    0,
    'SSM_DOCUMENT',
    'SSM_DOCUMENT',
  );

  /// All values of [RemediationTargetType].
  static const values = <RemediationTargetType>[
    RemediationTargetType.ssmDocument
  ];

  static const List<_i1.SmithySerializer<RemediationTargetType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RemediationTargetType',
      values: values,
      sdkUnknown: RemediationTargetType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RemediationTargetTypeHelpers on List<RemediationTargetType> {
  /// Returns the value of [RemediationTargetType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RemediationTargetType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RemediationTargetType] whose value matches [value].
  RemediationTargetType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
