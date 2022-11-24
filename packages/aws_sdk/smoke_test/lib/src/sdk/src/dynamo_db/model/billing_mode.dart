// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.billing_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BillingMode extends _i1.SmithyEnum<BillingMode> {
  const BillingMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BillingMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const payPerRequest = BillingMode._(
    0,
    'PAY_PER_REQUEST',
    'PAY_PER_REQUEST',
  );

  static const provisioned = BillingMode._(
    1,
    'PROVISIONED',
    'PROVISIONED',
  );

  /// All values of [BillingMode].
  static const values = <BillingMode>[
    BillingMode.payPerRequest,
    BillingMode.provisioned,
  ];

  static const List<_i1.SmithySerializer<BillingMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'BillingMode',
      values: values,
      sdkUnknown: BillingMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension BillingModeHelpers on List<BillingMode> {
  /// Returns the value of [BillingMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BillingMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BillingMode] whose value matches [value].
  BillingMode byValue(String value) => firstWhere((el) => el.value == value);
}
