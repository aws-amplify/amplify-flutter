// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.access_advisor_usage_granularity_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AccessAdvisorUsageGranularityType
    extends _i1.SmithyEnum<AccessAdvisorUsageGranularityType> {
  const AccessAdvisorUsageGranularityType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AccessAdvisorUsageGranularityType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const actionLevel = AccessAdvisorUsageGranularityType._(
    0,
    'ACTION_LEVEL',
    'ACTION_LEVEL',
  );

  static const serviceLevel = AccessAdvisorUsageGranularityType._(
    1,
    'SERVICE_LEVEL',
    'SERVICE_LEVEL',
  );

  /// All values of [AccessAdvisorUsageGranularityType].
  static const values = <AccessAdvisorUsageGranularityType>[
    AccessAdvisorUsageGranularityType.actionLevel,
    AccessAdvisorUsageGranularityType.serviceLevel,
  ];

  static const List<_i1.SmithySerializer<AccessAdvisorUsageGranularityType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AccessAdvisorUsageGranularityType',
      values: values,
      sdkUnknown: AccessAdvisorUsageGranularityType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension AccessAdvisorUsageGranularityTypeHelpers
    on List<AccessAdvisorUsageGranularityType> {
  /// Returns the value of [AccessAdvisorUsageGranularityType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AccessAdvisorUsageGranularityType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AccessAdvisorUsageGranularityType] whose value matches [value].
  AccessAdvisorUsageGranularityType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
