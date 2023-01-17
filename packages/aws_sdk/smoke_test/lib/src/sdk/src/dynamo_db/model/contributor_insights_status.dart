// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.contributor_insights_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContributorInsightsStatus
    extends _i1.SmithyEnum<ContributorInsightsStatus> {
  const ContributorInsightsStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ContributorInsightsStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = ContributorInsightsStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const disabling = ContributorInsightsStatus._(
    1,
    'DISABLING',
    'DISABLING',
  );

  static const enabled = ContributorInsightsStatus._(
    2,
    'ENABLED',
    'ENABLED',
  );

  static const enabling = ContributorInsightsStatus._(
    3,
    'ENABLING',
    'ENABLING',
  );

  static const failed = ContributorInsightsStatus._(
    4,
    'FAILED',
    'FAILED',
  );

  /// All values of [ContributorInsightsStatus].
  static const values = <ContributorInsightsStatus>[
    ContributorInsightsStatus.disabled,
    ContributorInsightsStatus.disabling,
    ContributorInsightsStatus.enabled,
    ContributorInsightsStatus.enabling,
    ContributorInsightsStatus.failed,
  ];

  static const List<_i1.SmithySerializer<ContributorInsightsStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ContributorInsightsStatus',
      values: values,
      sdkUnknown: ContributorInsightsStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ContributorInsightsStatusHelpers on List<ContributorInsightsStatus> {
  /// Returns the value of [ContributorInsightsStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ContributorInsightsStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ContributorInsightsStatus] whose value matches [value].
  ContributorInsightsStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
