// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_compliance_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConformancePackComplianceType
    extends _i1.SmithyEnum<ConformancePackComplianceType> {
  const ConformancePackComplianceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConformancePackComplianceType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const compliant = ConformancePackComplianceType._(
    0,
    'COMPLIANT',
    'COMPLIANT',
  );

  static const insufficientData = ConformancePackComplianceType._(
    1,
    'INSUFFICIENT_DATA',
    'INSUFFICIENT_DATA',
  );

  static const nonCompliant = ConformancePackComplianceType._(
    2,
    'NON_COMPLIANT',
    'NON_COMPLIANT',
  );

  /// All values of [ConformancePackComplianceType].
  static const values = <ConformancePackComplianceType>[
    ConformancePackComplianceType.compliant,
    ConformancePackComplianceType.insufficientData,
    ConformancePackComplianceType.nonCompliant,
  ];

  static const List<_i1.SmithySerializer<ConformancePackComplianceType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ConformancePackComplianceType',
      values: values,
      sdkUnknown: ConformancePackComplianceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ConformancePackComplianceTypeHelpers
    on List<ConformancePackComplianceType> {
  /// Returns the value of [ConformancePackComplianceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConformancePackComplianceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConformancePackComplianceType] whose value matches [value].
  ConformancePackComplianceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
