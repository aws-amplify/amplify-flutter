// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.retry_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Controls the strategy used for retries.
class RetryMode extends _i1.SmithyEnum<RetryMode> {
  const RetryMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RetryMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const adaptive = RetryMode._(
    0,
    'ADAPTIVE',
    'adaptive',
  );

  static const legacy = RetryMode._(
    1,
    'LEGACY',
    'legacy',
  );

  static const standard = RetryMode._(
    2,
    'STANDARD',
    'standard',
  );

  /// All values of [RetryMode].
  static const values = <RetryMode>[
    RetryMode.adaptive,
    RetryMode.legacy,
    RetryMode.standard,
  ];

  static const List<_i1.SmithySerializer<RetryMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'RetryMode',
      values: values,
      sdkUnknown: RetryMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension RetryModeHelpers on List<RetryMode> {
  /// Returns the value of [RetryMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RetryMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RetryMode] whose value matches [value].
  RetryMode byValue(String value) => firstWhere((el) => el.value == value);
}
