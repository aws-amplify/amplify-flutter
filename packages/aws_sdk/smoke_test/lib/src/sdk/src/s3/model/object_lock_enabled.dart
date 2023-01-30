// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.object_lock_enabled; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectLockEnabled extends _i1.SmithyEnum<ObjectLockEnabled> {
  const ObjectLockEnabled._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectLockEnabled._sdkUnknown(String value) : super.sdkUnknown(value);

  static const enabled = ObjectLockEnabled._(
    0,
    'Enabled',
    'Enabled',
  );

  /// All values of [ObjectLockEnabled].
  static const values = <ObjectLockEnabled>[ObjectLockEnabled.enabled];

  static const List<_i1.SmithySerializer<ObjectLockEnabled>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectLockEnabled',
      values: values,
      sdkUnknown: ObjectLockEnabled._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectLockEnabledHelpers on List<ObjectLockEnabled> {
  /// Returns the value of [ObjectLockEnabled] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectLockEnabled byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectLockEnabled] whose value matches [value].
  ObjectLockEnabled byValue(String value) =>
      firstWhere((el) => el.value == value);
}
