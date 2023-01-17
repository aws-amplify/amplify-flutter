// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.cache_cluster_size; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Returns the size of the CacheCluster.
class CacheClusterSize extends _i1.SmithyEnum<CacheClusterSize> {
  const CacheClusterSize._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CacheClusterSize._sdkUnknown(String value) : super.sdkUnknown(value);

  static const size0Point5Gb = CacheClusterSize._(
    0,
    'SIZE_0_POINT_5_GB',
    '0.5',
  );

  static const size118Gb = CacheClusterSize._(
    1,
    'SIZE_118_GB',
    '118',
  );

  static const size13Point5Gb = CacheClusterSize._(
    2,
    'SIZE_13_POINT_5_GB',
    '13.5',
  );

  static const size1Point6Gb = CacheClusterSize._(
    3,
    'SIZE_1_POINT_6_GB',
    '1.6',
  );

  static const size237Gb = CacheClusterSize._(
    4,
    'SIZE_237_GB',
    '237',
  );

  static const size28Point4Gb = CacheClusterSize._(
    5,
    'SIZE_28_POINT_4_GB',
    '28.4',
  );

  static const size58Point2Gb = CacheClusterSize._(
    6,
    'SIZE_58_POINT_2_GB',
    '58.2',
  );

  static const size6Point1Gb = CacheClusterSize._(
    7,
    'SIZE_6_POINT_1_GB',
    '6.1',
  );

  /// All values of [CacheClusterSize].
  static const values = <CacheClusterSize>[
    CacheClusterSize.size0Point5Gb,
    CacheClusterSize.size118Gb,
    CacheClusterSize.size13Point5Gb,
    CacheClusterSize.size1Point6Gb,
    CacheClusterSize.size237Gb,
    CacheClusterSize.size28Point4Gb,
    CacheClusterSize.size58Point2Gb,
    CacheClusterSize.size6Point1Gb,
  ];

  static const List<_i1.SmithySerializer<CacheClusterSize>> serializers = [
    _i1.SmithyEnumSerializer(
      'CacheClusterSize',
      values: values,
      sdkUnknown: CacheClusterSize._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension CacheClusterSizeHelpers on List<CacheClusterSize> {
  /// Returns the value of [CacheClusterSize] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CacheClusterSize byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CacheClusterSize] whose value matches [value].
  CacheClusterSize byValue(String value) =>
      firstWhere((el) => el.value == value);
}
