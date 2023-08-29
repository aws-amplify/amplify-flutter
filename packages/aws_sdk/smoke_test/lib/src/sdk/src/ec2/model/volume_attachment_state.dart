// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_attachment_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeAttachmentState extends _i1.SmithyEnum<VolumeAttachmentState> {
  const VolumeAttachmentState._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeAttachmentState._sdkUnknown(super.value) : super.sdkUnknown();

  static const attached = VolumeAttachmentState._(
    0,
    'attached',
    'attached',
  );

  static const attaching = VolumeAttachmentState._(
    1,
    'attaching',
    'attaching',
  );

  static const busy = VolumeAttachmentState._(
    2,
    'busy',
    'busy',
  );

  static const detached = VolumeAttachmentState._(
    3,
    'detached',
    'detached',
  );

  static const detaching = VolumeAttachmentState._(
    4,
    'detaching',
    'detaching',
  );

  /// All values of [VolumeAttachmentState].
  static const values = <VolumeAttachmentState>[
    VolumeAttachmentState.attached,
    VolumeAttachmentState.attaching,
    VolumeAttachmentState.busy,
    VolumeAttachmentState.detached,
    VolumeAttachmentState.detaching,
  ];

  static const List<_i1.SmithySerializer<VolumeAttachmentState>> serializers = [
    _i1.SmithyEnumSerializer(
      'VolumeAttachmentState',
      values: values,
      sdkUnknown: VolumeAttachmentState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeAttachmentStateHelpers on List<VolumeAttachmentState> {
  /// Returns the value of [VolumeAttachmentState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeAttachmentState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeAttachmentState] whose value matches [value].
  VolumeAttachmentState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
