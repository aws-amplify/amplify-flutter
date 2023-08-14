// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.image_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ImageAttributeName extends _i1.SmithyEnum<ImageAttributeName> {
  const ImageAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const ImageAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const blockDeviceMapping = ImageAttributeName._(
    0,
    'blockDeviceMapping',
    'blockDeviceMapping',
  );

  static const bootMode = ImageAttributeName._(
    1,
    'bootMode',
    'bootMode',
  );

  static const description = ImageAttributeName._(
    2,
    'description',
    'description',
  );

  static const imdsSupport = ImageAttributeName._(
    3,
    'imdsSupport',
    'imdsSupport',
  );

  static const kernel = ImageAttributeName._(
    4,
    'kernel',
    'kernel',
  );

  static const lastLaunchedTime = ImageAttributeName._(
    5,
    'lastLaunchedTime',
    'lastLaunchedTime',
  );

  static const launchPermission = ImageAttributeName._(
    6,
    'launchPermission',
    'launchPermission',
  );

  static const productCodes = ImageAttributeName._(
    7,
    'productCodes',
    'productCodes',
  );

  static const ramdisk = ImageAttributeName._(
    8,
    'ramdisk',
    'ramdisk',
  );

  static const sriovNetSupport = ImageAttributeName._(
    9,
    'sriovNetSupport',
    'sriovNetSupport',
  );

  static const tpmSupport = ImageAttributeName._(
    10,
    'tpmSupport',
    'tpmSupport',
  );

  static const uefiData = ImageAttributeName._(
    11,
    'uefiData',
    'uefiData',
  );

  /// All values of [ImageAttributeName].
  static const values = <ImageAttributeName>[
    ImageAttributeName.blockDeviceMapping,
    ImageAttributeName.bootMode,
    ImageAttributeName.description,
    ImageAttributeName.imdsSupport,
    ImageAttributeName.kernel,
    ImageAttributeName.lastLaunchedTime,
    ImageAttributeName.launchPermission,
    ImageAttributeName.productCodes,
    ImageAttributeName.ramdisk,
    ImageAttributeName.sriovNetSupport,
    ImageAttributeName.tpmSupport,
    ImageAttributeName.uefiData,
  ];

  static const List<_i1.SmithySerializer<ImageAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'ImageAttributeName',
      values: values,
      sdkUnknown: ImageAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ImageAttributeNameHelpers on List<ImageAttributeName> {
  /// Returns the value of [ImageAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ImageAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ImageAttributeName] whose value matches [value].
  ImageAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
