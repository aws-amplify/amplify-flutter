// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.integration_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// The integration type. The valid value is `HTTP` for integrating an API method with an HTTP backend; `AWS` with any AWS service endpoints; `MOCK` for testing without actually invoking the backend; `HTTP_PROXY` for integrating with the HTTP proxy integration; `AWS_PROXY` for integrating with the Lambda proxy integration.
class IntegrationType extends _i1.SmithyEnum<IntegrationType> {
  const IntegrationType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const IntegrationType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const aws = IntegrationType._(
    0,
    'AWS',
    'AWS',
  );

  static const awsProxy = IntegrationType._(
    1,
    'AWS_PROXY',
    'AWS_PROXY',
  );

  static const http = IntegrationType._(
    2,
    'HTTP',
    'HTTP',
  );

  static const httpProxy = IntegrationType._(
    3,
    'HTTP_PROXY',
    'HTTP_PROXY',
  );

  static const mock = IntegrationType._(
    4,
    'MOCK',
    'MOCK',
  );

  /// All values of [IntegrationType].
  static const values = <IntegrationType>[
    IntegrationType.aws,
    IntegrationType.awsProxy,
    IntegrationType.http,
    IntegrationType.httpProxy,
    IntegrationType.mock,
  ];

  static const List<_i1.SmithySerializer<IntegrationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'IntegrationType',
      values: values,
      sdkUnknown: IntegrationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension IntegrationTypeHelpers on List<IntegrationType> {
  /// Returns the value of [IntegrationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IntegrationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IntegrationType] whose value matches [value].
  IntegrationType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
