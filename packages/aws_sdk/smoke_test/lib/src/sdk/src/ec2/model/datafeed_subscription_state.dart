// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.datafeed_subscription_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DatafeedSubscriptionState
    extends _i1.SmithyEnum<DatafeedSubscriptionState> {
  const DatafeedSubscriptionState._(
    super.index,
    super.name,
    super.value,
  );

  const DatafeedSubscriptionState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = DatafeedSubscriptionState._(
    0,
    'Active',
    'Active',
  );

  static const inactive = DatafeedSubscriptionState._(
    1,
    'Inactive',
    'Inactive',
  );

  /// All values of [DatafeedSubscriptionState].
  static const values = <DatafeedSubscriptionState>[
    DatafeedSubscriptionState.active,
    DatafeedSubscriptionState.inactive,
  ];

  static const List<_i1.SmithySerializer<DatafeedSubscriptionState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DatafeedSubscriptionState',
      values: values,
      sdkUnknown: DatafeedSubscriptionState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DatafeedSubscriptionStateHelpers on List<DatafeedSubscriptionState> {
  /// Returns the value of [DatafeedSubscriptionState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DatafeedSubscriptionState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DatafeedSubscriptionState] whose value matches [value].
  DatafeedSubscriptionState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
