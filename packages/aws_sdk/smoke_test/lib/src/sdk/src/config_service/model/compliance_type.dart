// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.compliance_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ComplianceType extends _i1.SmithyEnum<ComplianceType> {
  const ComplianceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ComplianceType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const compliant = ComplianceType._(
    0,
    'Compliant',
    'COMPLIANT',
  );

  static const insufficientData = ComplianceType._(
    1,
    'Insufficient_Data',
    'INSUFFICIENT_DATA',
  );

  static const nonCompliant = ComplianceType._(
    2,
    'Non_Compliant',
    'NON_COMPLIANT',
  );

  static const notApplicable = ComplianceType._(
    3,
    'Not_Applicable',
    'NOT_APPLICABLE',
  );

  /// All values of [ComplianceType].
  static const values = <ComplianceType>[
    ComplianceType.compliant,
    ComplianceType.insufficientData,
    ComplianceType.nonCompliant,
    ComplianceType.notApplicable,
  ];

  static const List<_i1.SmithySerializer<ComplianceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ComplianceType',
      values: values,
      sdkUnknown: ComplianceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ComplianceTypeHelpers on List<ComplianceType> {
  /// Returns the value of [ComplianceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ComplianceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ComplianceType] whose value matches [value].
  ComplianceType byValue(String value) => firstWhere((el) => el.value == value);
}
