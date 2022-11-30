// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.encoding_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
class EncodingType extends _i1.SmithyEnum<EncodingType> {
  const EncodingType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EncodingType._sdkUnknown(String value) : super.sdkUnknown(value);

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
