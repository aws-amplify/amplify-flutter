// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.model.stream_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StreamStatus extends _i1.SmithyEnum<StreamStatus> {
  const StreamStatus._(
    super.index,
    super.name,
    super.value,
  );

  const StreamStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = StreamStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const disabling = StreamStatus._(
    1,
    'DISABLING',
    'DISABLING',
  );

  static const enabled = StreamStatus._(
    2,
    'ENABLED',
    'ENABLED',
  );

  static const enabling = StreamStatus._(
    3,
    'ENABLING',
    'ENABLING',
  );

  /// All values of [StreamStatus].
  static const values = <StreamStatus>[
    StreamStatus.disabled,
    StreamStatus.disabling,
    StreamStatus.enabled,
    StreamStatus.enabling,
  ];

  static const List<_i1.SmithySerializer<StreamStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'StreamStatus',
      values: values,
      sdkUnknown: StreamStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension StreamStatusHelpers on List<StreamStatus> {
  /// Returns the value of [StreamStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StreamStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StreamStatus] whose value matches [value].
  StreamStatus byValue(String value) => firstWhere((el) => el.value == value);
}
