// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.cache_cluster_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Returns the status of the CacheCluster.
class CacheClusterStatus extends _i1.SmithyEnum<CacheClusterStatus> {
  const CacheClusterStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CacheClusterStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const available = CacheClusterStatus._(
    0,
    'AVAILABLE',
    'AVAILABLE',
  );

  static const createInProgress = CacheClusterStatus._(
    1,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const deleteInProgress = CacheClusterStatus._(
    2,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const flushInProgress = CacheClusterStatus._(
    3,
    'FLUSH_IN_PROGRESS',
    'FLUSH_IN_PROGRESS',
  );

  static const notAvailable = CacheClusterStatus._(
    4,
    'NOT_AVAILABLE',
    'NOT_AVAILABLE',
  );

  /// All values of [CacheClusterStatus].
  static const values = <CacheClusterStatus>[
    CacheClusterStatus.available,
    CacheClusterStatus.createInProgress,
    CacheClusterStatus.deleteInProgress,
    CacheClusterStatus.flushInProgress,
    CacheClusterStatus.notAvailable,
  ];

  static const List<_i1.SmithySerializer<CacheClusterStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'CacheClusterStatus',
      values: values,
      sdkUnknown: CacheClusterStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension CacheClusterStatusHelpers on List<CacheClusterStatus> {
  /// Returns the value of [CacheClusterStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CacheClusterStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CacheClusterStatus] whose value matches [value].
  CacheClusterStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
