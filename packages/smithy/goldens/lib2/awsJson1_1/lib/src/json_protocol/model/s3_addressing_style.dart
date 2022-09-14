// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.model.s3_addressing_style; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Controls the S3 addressing bucket style.
class S3AddressingStyle extends _i1.SmithyEnum<S3AddressingStyle> {
  const S3AddressingStyle._(int index, String name, String value)
      : super(index, name, value);

  const S3AddressingStyle._sdkUnknown(String value) : super.sdkUnknown(value);

  static const auto = S3AddressingStyle._(0, 'AUTO', 'auto');

  static const path = S3AddressingStyle._(1, 'PATH', 'path');

  static const virtual = S3AddressingStyle._(2, 'VIRTUAL', 'virtual');

  /// All values of [S3AddressingStyle].
  static const values = <S3AddressingStyle>[
    S3AddressingStyle.auto,
    S3AddressingStyle.path,
    S3AddressingStyle.virtual
  ];

  static const List<_i1.SmithySerializer<S3AddressingStyle>> serializers = [
    _i1.SmithyEnumSerializer('S3AddressingStyle',
        values: values,
        sdkUnknown: S3AddressingStyle._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')
        ])
  ];
}

extension S3AddressingStyleHelpers on List<S3AddressingStyle> {
  /// Returns the value of [S3AddressingStyle] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  S3AddressingStyle byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [S3AddressingStyle] whose value matches [value].
  S3AddressingStyle byValue(String value) =>
      firstWhere((el) => el.value == value);
}
