// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.s3.model.encoding_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EncodingType extends _i1.SmithyEnum<EncodingType> {
  const EncodingType._(
    super.index,
    super.name,
    super.value,
  );

  const EncodingType._sdkUnknown(super.value) : super.sdkUnknown();

  static const url = EncodingType._(
    0,
    'url',
    'url',
  );

  /// All values of [EncodingType].
  static const values = <EncodingType>[EncodingType.url];

  static const List<_i1.SmithySerializer<EncodingType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EncodingType',
      values: values,
      sdkUnknown: EncodingType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension EncodingTypeHelpers on List<EncodingType> {
  /// Returns the value of [EncodingType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EncodingType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EncodingType] whose value matches [value].
  EncodingType byValue(String value) => firstWhere((el) => el.value == value);
}
