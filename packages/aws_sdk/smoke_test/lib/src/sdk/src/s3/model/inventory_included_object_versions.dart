// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.inventory_included_object_versions; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InventoryIncludedObjectVersions
    extends _i1.SmithyEnum<InventoryIncludedObjectVersions> {
  const InventoryIncludedObjectVersions._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InventoryIncludedObjectVersions._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const all = InventoryIncludedObjectVersions._(
    0,
    'All',
    'All',
  );

  static const current = InventoryIncludedObjectVersions._(
    1,
    'Current',
    'Current',
  );

  /// All values of [InventoryIncludedObjectVersions].
  static const values = <InventoryIncludedObjectVersions>[
    InventoryIncludedObjectVersions.all,
    InventoryIncludedObjectVersions.current,
  ];

  static const List<_i1.SmithySerializer<InventoryIncludedObjectVersions>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InventoryIncludedObjectVersions',
      values: values,
      sdkUnknown: InventoryIncludedObjectVersions._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension InventoryIncludedObjectVersionsHelpers
    on List<InventoryIncludedObjectVersions> {
  /// Returns the value of [InventoryIncludedObjectVersions] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InventoryIncludedObjectVersions byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InventoryIncludedObjectVersions] whose value matches [value].
  InventoryIncludedObjectVersions byValue(String value) =>
      firstWhere((el) => el.value == value);
}
