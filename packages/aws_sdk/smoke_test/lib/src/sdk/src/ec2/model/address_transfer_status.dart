// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.address_transfer_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AddressTransferStatus extends _i1.SmithyEnum<AddressTransferStatus> {
  const AddressTransferStatus._(
    super.index,
    super.name,
    super.value,
  );

  const AddressTransferStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const accepted = AddressTransferStatus._(
    0,
    'accepted',
    'accepted',
  );

  static const disabled = AddressTransferStatus._(
    1,
    'disabled',
    'disabled',
  );

  static const pending = AddressTransferStatus._(
    2,
    'pending',
    'pending',
  );

  /// All values of [AddressTransferStatus].
  static const values = <AddressTransferStatus>[
    AddressTransferStatus.accepted,
    AddressTransferStatus.disabled,
    AddressTransferStatus.pending,
  ];

  static const List<_i1.SmithySerializer<AddressTransferStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'AddressTransferStatus',
      values: values,
      sdkUnknown: AddressTransferStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AddressTransferStatusHelpers on List<AddressTransferStatus> {
  /// Returns the value of [AddressTransferStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AddressTransferStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AddressTransferStatus] whose value matches [value].
  AddressTransferStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
