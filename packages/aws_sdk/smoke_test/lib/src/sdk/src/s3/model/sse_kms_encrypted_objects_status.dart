// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.sse_kms_encrypted_objects_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SseKmsEncryptedObjectsStatus
    extends _i1.SmithyEnum<SseKmsEncryptedObjectsStatus> {
  const SseKmsEncryptedObjectsStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SseKmsEncryptedObjectsStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = SseKmsEncryptedObjectsStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = SseKmsEncryptedObjectsStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [SseKmsEncryptedObjectsStatus].
  static const values = <SseKmsEncryptedObjectsStatus>[
    SseKmsEncryptedObjectsStatus.disabled,
    SseKmsEncryptedObjectsStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<SseKmsEncryptedObjectsStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'SseKmsEncryptedObjectsStatus',
      values: values,
      sdkUnknown: SseKmsEncryptedObjectsStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension SseKmsEncryptedObjectsStatusHelpers
    on List<SseKmsEncryptedObjectsStatus> {
  /// Returns the value of [SseKmsEncryptedObjectsStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SseKmsEncryptedObjectsStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SseKmsEncryptedObjectsStatus] whose value matches [value].
  SseKmsEncryptedObjectsStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
