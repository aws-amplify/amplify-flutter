// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.gateway_response_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class GatewayResponseType extends _i1.SmithyEnum<GatewayResponseType> {
  const GatewayResponseType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const GatewayResponseType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const accessDenied = GatewayResponseType._(
    0,
    'ACCESS_DENIED',
    'ACCESS_DENIED',
  );

  static const apiConfigurationError = GatewayResponseType._(
    1,
    'API_CONFIGURATION_ERROR',
    'API_CONFIGURATION_ERROR',
  );

  static const authorizerConfigurationError = GatewayResponseType._(
    2,
    'AUTHORIZER_CONFIGURATION_ERROR',
    'AUTHORIZER_CONFIGURATION_ERROR',
  );

  static const authorizerFailure = GatewayResponseType._(
    3,
    'AUTHORIZER_FAILURE',
    'AUTHORIZER_FAILURE',
  );

  static const badRequestBody = GatewayResponseType._(
    4,
    'BAD_REQUEST_BODY',
    'BAD_REQUEST_BODY',
  );

  static const badRequestParameters = GatewayResponseType._(
    5,
    'BAD_REQUEST_PARAMETERS',
    'BAD_REQUEST_PARAMETERS',
  );

  static const default4Xx = GatewayResponseType._(
    6,
    'DEFAULT_4XX',
    'DEFAULT_4XX',
  );

  static const default5Xx = GatewayResponseType._(
    7,
    'DEFAULT_5XX',
    'DEFAULT_5XX',
  );

  static const expiredToken = GatewayResponseType._(
    8,
    'EXPIRED_TOKEN',
    'EXPIRED_TOKEN',
  );

  static const integrationFailure = GatewayResponseType._(
    9,
    'INTEGRATION_FAILURE',
    'INTEGRATION_FAILURE',
  );

  static const integrationTimeout = GatewayResponseType._(
    10,
    'INTEGRATION_TIMEOUT',
    'INTEGRATION_TIMEOUT',
  );

  static const invalidApiKey = GatewayResponseType._(
    11,
    'INVALID_API_KEY',
    'INVALID_API_KEY',
  );

  static const invalidSignature = GatewayResponseType._(
    12,
    'INVALID_SIGNATURE',
    'INVALID_SIGNATURE',
  );

  static const missingAuthenticationToken = GatewayResponseType._(
    13,
    'MISSING_AUTHENTICATION_TOKEN',
    'MISSING_AUTHENTICATION_TOKEN',
  );

  static const quotaExceeded = GatewayResponseType._(
    14,
    'QUOTA_EXCEEDED',
    'QUOTA_EXCEEDED',
  );

  static const requestTooLarge = GatewayResponseType._(
    15,
    'REQUEST_TOO_LARGE',
    'REQUEST_TOO_LARGE',
  );

  static const resourceNotFound = GatewayResponseType._(
    16,
    'RESOURCE_NOT_FOUND',
    'RESOURCE_NOT_FOUND',
  );

  static const throttled = GatewayResponseType._(
    17,
    'THROTTLED',
    'THROTTLED',
  );

  static const unauthorized = GatewayResponseType._(
    18,
    'UNAUTHORIZED',
    'UNAUTHORIZED',
  );

  static const unsupportedMediaType = GatewayResponseType._(
    19,
    'UNSUPPORTED_MEDIA_TYPE',
    'UNSUPPORTED_MEDIA_TYPE',
  );

  static const wafFiltered = GatewayResponseType._(
    20,
    'WAF_FILTERED',
    'WAF_FILTERED',
  );

  /// All values of [GatewayResponseType].
  static const values = <GatewayResponseType>[
    GatewayResponseType.accessDenied,
    GatewayResponseType.apiConfigurationError,
    GatewayResponseType.authorizerConfigurationError,
    GatewayResponseType.authorizerFailure,
    GatewayResponseType.badRequestBody,
    GatewayResponseType.badRequestParameters,
    GatewayResponseType.default4Xx,
    GatewayResponseType.default5Xx,
    GatewayResponseType.expiredToken,
    GatewayResponseType.integrationFailure,
    GatewayResponseType.integrationTimeout,
    GatewayResponseType.invalidApiKey,
    GatewayResponseType.invalidSignature,
    GatewayResponseType.missingAuthenticationToken,
    GatewayResponseType.quotaExceeded,
    GatewayResponseType.requestTooLarge,
    GatewayResponseType.resourceNotFound,
    GatewayResponseType.throttled,
    GatewayResponseType.unauthorized,
    GatewayResponseType.unsupportedMediaType,
    GatewayResponseType.wafFiltered,
  ];

  static const List<_i1.SmithySerializer<GatewayResponseType>> serializers = [
    _i1.SmithyEnumSerializer(
      'GatewayResponseType',
      values: values,
      sdkUnknown: GatewayResponseType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension GatewayResponseTypeHelpers on List<GatewayResponseType> {
  /// Returns the value of [GatewayResponseType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  GatewayResponseType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [GatewayResponseType] whose value matches [value].
  GatewayResponseType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
