// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.vpc_link_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcLinkStatus extends _i1.SmithyEnum<VpcLinkStatus> {
  const VpcLinkStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const VpcLinkStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const available = VpcLinkStatus._(
    0,
    'AVAILABLE',
    'AVAILABLE',
  );

  static const deleting = VpcLinkStatus._(
    1,
    'DELETING',
    'DELETING',
  );

  static const failed = VpcLinkStatus._(
    2,
    'FAILED',
    'FAILED',
  );

  static const pending = VpcLinkStatus._(
    3,
    'PENDING',
    'PENDING',
  );

  /// All values of [VpcLinkStatus].
  static const values = <VpcLinkStatus>[
    VpcLinkStatus.available,
    VpcLinkStatus.deleting,
    VpcLinkStatus.failed,
    VpcLinkStatus.pending,
  ];

  static const List<_i1.SmithySerializer<VpcLinkStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpcLinkStatus',
      values: values,
      sdkUnknown: VpcLinkStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension VpcLinkStatusHelpers on List<VpcLinkStatus> {
  /// Returns the value of [VpcLinkStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcLinkStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcLinkStatus] whose value matches [value].
  VpcLinkStatus byValue(String value) => firstWhere((el) => el.value == value);
}
