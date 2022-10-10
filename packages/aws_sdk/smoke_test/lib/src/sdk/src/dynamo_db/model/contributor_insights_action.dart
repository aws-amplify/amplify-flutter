// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.contributor_insights_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContributorInsightsAction
    extends _i1.SmithyEnum<ContributorInsightsAction> {
  const ContributorInsightsAction._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ContributorInsightsAction._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disable = ContributorInsightsAction._(
    0,
    'DISABLE',
    'DISABLE',
  );

  static const enable = ContributorInsightsAction._(
    1,
    'ENABLE',
    'ENABLE',
  );

  /// All values of [ContributorInsightsAction].
  static const values = <ContributorInsightsAction>[
    ContributorInsightsAction.disable,
    ContributorInsightsAction.enable,
  ];

  static const List<_i1.SmithySerializer<ContributorInsightsAction>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ContributorInsightsAction',
      values: values,
      sdkUnknown: ContributorInsightsAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ContributorInsightsActionHelpers on List<ContributorInsightsAction> {
  /// Returns the value of [ContributorInsightsAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ContributorInsightsAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ContributorInsightsAction] whose value matches [value].
  ContributorInsightsAction byValue(String value) =>
      firstWhere((el) => el.value == value);
}
