// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.image_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ImageState extends _i1.SmithyEnum<ImageState> {
  const ImageState._(
    super.index,
    super.name,
    super.value,
  );

  const ImageState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = ImageState._(
    0,
    'available',
    'available',
  );

  static const deregistered = ImageState._(
    1,
    'deregistered',
    'deregistered',
  );

  static const error = ImageState._(
    2,
    'error',
    'error',
  );

  static const failed = ImageState._(
    3,
    'failed',
    'failed',
  );

  static const invalid = ImageState._(
    4,
    'invalid',
    'invalid',
  );

  static const pending = ImageState._(
    5,
    'pending',
    'pending',
  );

  static const transient = ImageState._(
    6,
    'transient',
    'transient',
  );

  /// All values of [ImageState].
  static const values = <ImageState>[
    ImageState.available,
    ImageState.deregistered,
    ImageState.error,
    ImageState.failed,
    ImageState.invalid,
    ImageState.pending,
    ImageState.transient,
  ];

  static const List<_i1.SmithySerializer<ImageState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ImageState',
      values: values,
      sdkUnknown: ImageState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ImageStateHelpers on List<ImageState> {
  /// Returns the value of [ImageState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ImageState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ImageState] whose value matches [value].
  ImageState byValue(String value) => firstWhere((el) => el.value == value);
}
