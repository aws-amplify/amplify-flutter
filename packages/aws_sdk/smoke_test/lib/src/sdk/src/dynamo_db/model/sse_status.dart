// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.sse_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SseStatus extends _i1.SmithyEnum<SseStatus> {
  const SseStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SseStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disabled = SseStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const disabling = SseStatus._(
    1,
    'DISABLING',
    'DISABLING',
  );

  static const enabled = SseStatus._(
    2,
    'ENABLED',
    'ENABLED',
  );

  static const enabling = SseStatus._(
    3,
    'ENABLING',
    'ENABLING',
  );

  static const updating = SseStatus._(
    4,
    'UPDATING',
    'UPDATING',
  );

  /// All values of [SseStatus].
  static const values = <SseStatus>[
    SseStatus.disabled,
    SseStatus.disabling,
    SseStatus.enabled,
    SseStatus.enabling,
    SseStatus.updating,
  ];

  static const List<_i1.SmithySerializer<SseStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'SSEStatus',
      values: values,
      sdkUnknown: SseStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension SseStatusHelpers on List<SseStatus> {
  /// Returns the value of [SseStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SseStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SseStatus] whose value matches [value].
  SseStatus byValue(String value) => firstWhere((el) => el.value == value);
}
