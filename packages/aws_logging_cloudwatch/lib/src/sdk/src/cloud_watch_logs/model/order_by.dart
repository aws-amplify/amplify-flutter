// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.order_by; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrderBy extends _i1.SmithyEnum<OrderBy> {
  const OrderBy._(
    super.index,
    super.name,
    super.value,
  );

  const OrderBy._sdkUnknown(super.value) : super.sdkUnknown();

  static const lastEventTime = OrderBy._(
    0,
    'LastEventTime',
    'LastEventTime',
  );

  static const logStreamName = OrderBy._(
    1,
    'LogStreamName',
    'LogStreamName',
  );

  /// All values of [OrderBy].
  static const values = <OrderBy>[
    OrderBy.lastEventTime,
    OrderBy.logStreamName,
  ];

  static const List<_i1.SmithySerializer<OrderBy>> serializers = [
    _i1.SmithyEnumSerializer(
      'OrderBy',
      values: values,
      sdkUnknown: OrderBy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OrderByHelpers on List<OrderBy> {
  /// Returns the value of [OrderBy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrderBy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrderBy] whose value matches [value].
  OrderBy byValue(String value) => firstWhere((el) => el.value == value);
}
