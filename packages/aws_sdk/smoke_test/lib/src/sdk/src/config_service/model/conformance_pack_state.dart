// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConformancePackState extends _i1.SmithyEnum<ConformancePackState> {
  const ConformancePackState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConformancePackState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const createComplete = ConformancePackState._(
    0,
    'CREATE_COMPLETE',
    'CREATE_COMPLETE',
  );

  static const createFailed = ConformancePackState._(
    1,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = ConformancePackState._(
    2,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const deleteFailed = ConformancePackState._(
    3,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = ConformancePackState._(
    4,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  /// All values of [ConformancePackState].
  static const values = <ConformancePackState>[
    ConformancePackState.createComplete,
    ConformancePackState.createFailed,
    ConformancePackState.createInProgress,
    ConformancePackState.deleteFailed,
    ConformancePackState.deleteInProgress,
  ];

  static const List<_i1.SmithySerializer<ConformancePackState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ConformancePackState',
      values: values,
      sdkUnknown: ConformancePackState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ConformancePackStateHelpers on List<ConformancePackState> {
  /// Returns the value of [ConformancePackState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConformancePackState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConformancePackState] whose value matches [value].
  ConformancePackState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
