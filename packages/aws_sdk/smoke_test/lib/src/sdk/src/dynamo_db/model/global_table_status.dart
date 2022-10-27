// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.global_table_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class GlobalTableStatus extends _i1.SmithyEnum<GlobalTableStatus> {
  const GlobalTableStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const GlobalTableStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = GlobalTableStatus._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const creating = GlobalTableStatus._(
    1,
    'CREATING',
    'CREATING',
  );

  static const deleting = GlobalTableStatus._(
    2,
    'DELETING',
    'DELETING',
  );

  static const updating = GlobalTableStatus._(
    3,
    'UPDATING',
    'UPDATING',
  );

  /// All values of [GlobalTableStatus].
  static const values = <GlobalTableStatus>[
    GlobalTableStatus.active,
    GlobalTableStatus.creating,
    GlobalTableStatus.deleting,
    GlobalTableStatus.updating,
  ];

  static const List<_i1.SmithySerializer<GlobalTableStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'GlobalTableStatus',
      values: values,
      sdkUnknown: GlobalTableStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension GlobalTableStatusHelpers on List<GlobalTableStatus> {
  /// Returns the value of [GlobalTableStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  GlobalTableStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [GlobalTableStatus] whose value matches [value].
  GlobalTableStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
