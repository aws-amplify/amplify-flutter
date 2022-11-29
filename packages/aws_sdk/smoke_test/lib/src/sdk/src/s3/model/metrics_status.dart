// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.metrics_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MetricsStatus extends _i1.SmithyEnum<MetricsStatus> {
  const MetricsStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const MetricsStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disabled = MetricsStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = MetricsStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [MetricsStatus].
  static const values = <MetricsStatus>[
    MetricsStatus.disabled,
    MetricsStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<MetricsStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'MetricsStatus',
      values: values,
      sdkUnknown: MetricsStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension MetricsStatusHelpers on List<MetricsStatus> {
  /// Returns the value of [MetricsStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MetricsStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MetricsStatus] whose value matches [value].
  MetricsStatus byValue(String value) => firstWhere((el) => el.value == value);
}
