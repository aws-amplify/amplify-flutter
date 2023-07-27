// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.contributor_insights_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContributorInsightsAction
    extends _i1.SmithyEnum<ContributorInsightsAction> {
  const ContributorInsightsAction._(
    super.index,
    super.name,
    super.value,
  );

  const ContributorInsightsAction._sdkUnknown(super.value) : super.sdkUnknown();

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
