// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.encoding_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

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

  static const pem = EncodingType._(
    0,
    'PEM',
    'PEM',
  );

  static const ssh = EncodingType._(
    1,
    'SSH',
    'SSH',
  );

  /// All values of [EncodingType].
  static const values = <EncodingType>[
    EncodingType.pem,
    EncodingType.ssh,
  ];

  static const List<_i1.SmithySerializer<EncodingType>> serializers = [
    _i1.SmithyEnumSerializer(
      'encodingType',
      values: values,
      sdkUnknown: EncodingType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
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
