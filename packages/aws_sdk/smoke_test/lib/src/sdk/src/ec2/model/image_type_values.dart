// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.image_type_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ImageTypeValues extends _i1.SmithyEnum<ImageTypeValues> {
  const ImageTypeValues._(
    super.index,
    super.name,
    super.value,
  );

  const ImageTypeValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const kernel = ImageTypeValues._(
    0,
    'kernel',
    'kernel',
  );

  static const machine = ImageTypeValues._(
    1,
    'machine',
    'machine',
  );

  static const ramdisk = ImageTypeValues._(
    2,
    'ramdisk',
    'ramdisk',
  );

  /// All values of [ImageTypeValues].
  static const values = <ImageTypeValues>[
    ImageTypeValues.kernel,
    ImageTypeValues.machine,
    ImageTypeValues.ramdisk,
  ];

  static const List<_i1.SmithySerializer<ImageTypeValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'ImageTypeValues',
      values: values,
      sdkUnknown: ImageTypeValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ImageTypeValuesHelpers on List<ImageTypeValues> {
  /// Returns the value of [ImageTypeValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ImageTypeValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ImageTypeValues] whose value matches [value].
  ImageTypeValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
