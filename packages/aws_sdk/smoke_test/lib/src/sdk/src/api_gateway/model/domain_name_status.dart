// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.domain_name_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DomainNameStatus extends _i1.SmithyEnum<DomainNameStatus> {
  const DomainNameStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DomainNameStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const available = DomainNameStatus._(
    0,
    'AVAILABLE',
    'AVAILABLE',
  );

  static const pending = DomainNameStatus._(
    1,
    'PENDING',
    'PENDING',
  );

  static const pendingCertificateReimport = DomainNameStatus._(
    2,
    'PENDING_CERTIFICATE_REIMPORT',
    'PENDING_CERTIFICATE_REIMPORT',
  );

  static const pendingOwnershipVerification = DomainNameStatus._(
    3,
    'PENDING_OWNERSHIP_VERIFICATION',
    'PENDING_OWNERSHIP_VERIFICATION',
  );

  static const updating = DomainNameStatus._(
    4,
    'UPDATING',
    'UPDATING',
  );

  /// All values of [DomainNameStatus].
  static const values = <DomainNameStatus>[
    DomainNameStatus.available,
    DomainNameStatus.pending,
    DomainNameStatus.pendingCertificateReimport,
    DomainNameStatus.pendingOwnershipVerification,
    DomainNameStatus.updating,
  ];

  static const List<_i1.SmithySerializer<DomainNameStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'DomainNameStatus',
      values: values,
      sdkUnknown: DomainNameStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension DomainNameStatusHelpers on List<DomainNameStatus> {
  /// Returns the value of [DomainNameStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DomainNameStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DomainNameStatus] whose value matches [value].
  DomainNameStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
