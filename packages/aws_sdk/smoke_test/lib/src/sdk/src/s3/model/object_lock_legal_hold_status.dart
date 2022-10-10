// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.object_lock_legal_hold_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectLockLegalHoldStatus
    extends _i1.SmithyEnum<ObjectLockLegalHoldStatus> {
  const ObjectLockLegalHoldStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectLockLegalHoldStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const off = ObjectLockLegalHoldStatus._(
    0,
    'OFF',
    'OFF',
  );

  static const on = ObjectLockLegalHoldStatus._(
    1,
    'ON',
    'ON',
  );

  /// All values of [ObjectLockLegalHoldStatus].
  static const values = <ObjectLockLegalHoldStatus>[
    ObjectLockLegalHoldStatus.off,
    ObjectLockLegalHoldStatus.on,
  ];

  static const List<_i1.SmithySerializer<ObjectLockLegalHoldStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectLockLegalHoldStatus',
      values: values,
      sdkUnknown: ObjectLockLegalHoldStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectLockLegalHoldStatusHelpers on List<ObjectLockLegalHoldStatus> {
  /// Returns the value of [ObjectLockLegalHoldStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectLockLegalHoldStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectLockLegalHoldStatus] whose value matches [value].
  ObjectLockLegalHoldStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
