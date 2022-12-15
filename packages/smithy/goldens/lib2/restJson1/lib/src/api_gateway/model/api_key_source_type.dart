// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.api_gateway.model.api_key_source_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ApiKeySourceType extends _i1.SmithyEnum<ApiKeySourceType> {
  const ApiKeySourceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ApiKeySourceType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const authorizer = ApiKeySourceType._(
    0,
    'AUTHORIZER',
    'AUTHORIZER',
  );

  static const header = ApiKeySourceType._(
    1,
    'HEADER',
    'HEADER',
  );

  /// All values of [ApiKeySourceType].
  static const values = <ApiKeySourceType>[
    ApiKeySourceType.authorizer,
    ApiKeySourceType.header,
  ];

  static const List<_i1.SmithySerializer<ApiKeySourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ApiKeySourceType',
      values: values,
      sdkUnknown: ApiKeySourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ApiKeySourceTypeHelpers on List<ApiKeySourceType> {
  /// Returns the value of [ApiKeySourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ApiKeySourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ApiKeySourceType] whose value matches [value].
  ApiKeySourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
