// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.return_item_collection_metrics; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReturnItemCollectionMetrics
    extends _i1.SmithyEnum<ReturnItemCollectionMetrics> {
  const ReturnItemCollectionMetrics._(
    super.index,
    super.name,
    super.value,
  );

  const ReturnItemCollectionMetrics._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const none = ReturnItemCollectionMetrics._(
    0,
    'NONE',
    'NONE',
  );

  static const size = ReturnItemCollectionMetrics._(
    1,
    'SIZE',
    'SIZE',
  );

  /// All values of [ReturnItemCollectionMetrics].
  static const values = <ReturnItemCollectionMetrics>[
    ReturnItemCollectionMetrics.none,
    ReturnItemCollectionMetrics.size,
  ];

  static const List<_i1.SmithySerializer<ReturnItemCollectionMetrics>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ReturnItemCollectionMetrics',
      values: values,
      sdkUnknown: ReturnItemCollectionMetrics._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ReturnItemCollectionMetricsHelpers
    on List<ReturnItemCollectionMetrics> {
  /// Returns the value of [ReturnItemCollectionMetrics] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReturnItemCollectionMetrics byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReturnItemCollectionMetrics] whose value matches [value].
  ReturnItemCollectionMetrics byValue(String value) =>
      firstWhere((el) => el.value == value);
}
