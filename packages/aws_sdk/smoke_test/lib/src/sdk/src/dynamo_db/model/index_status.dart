// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.index_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IndexStatus extends _i1.SmithyEnum<IndexStatus> {
  const IndexStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const IndexStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = IndexStatus._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const creating = IndexStatus._(
    1,
    'CREATING',
    'CREATING',
  );

  static const deleting = IndexStatus._(
    2,
    'DELETING',
    'DELETING',
  );

  static const updating = IndexStatus._(
    3,
    'UPDATING',
    'UPDATING',
  );

  /// All values of [IndexStatus].
  static const values = <IndexStatus>[
    IndexStatus.active,
    IndexStatus.creating,
    IndexStatus.deleting,
    IndexStatus.updating,
  ];

  static const List<_i1.SmithySerializer<IndexStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'IndexStatus',
      values: values,
      sdkUnknown: IndexStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension IndexStatusHelpers on List<IndexStatus> {
  /// Returns the value of [IndexStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IndexStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IndexStatus] whose value matches [value].
  IndexStatus byValue(String value) => firstWhere((el) => el.value == value);
}
