// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.unauthorized_cache_control_header_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class UnauthorizedCacheControlHeaderStrategy
    extends _i1.SmithyEnum<UnauthorizedCacheControlHeaderStrategy> {
  const UnauthorizedCacheControlHeaderStrategy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const UnauthorizedCacheControlHeaderStrategy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failWith403 = UnauthorizedCacheControlHeaderStrategy._(
    0,
    'FAIL_WITH_403',
    'FAIL_WITH_403',
  );

  static const succeedWithResponseHeader =
      UnauthorizedCacheControlHeaderStrategy._(
    1,
    'SUCCEED_WITH_RESPONSE_HEADER',
    'SUCCEED_WITH_RESPONSE_HEADER',
  );

  static const succeedWithoutResponseHeader =
      UnauthorizedCacheControlHeaderStrategy._(
    2,
    'SUCCEED_WITHOUT_RESPONSE_HEADER',
    'SUCCEED_WITHOUT_RESPONSE_HEADER',
  );

  /// All values of [UnauthorizedCacheControlHeaderStrategy].
  static const values = <UnauthorizedCacheControlHeaderStrategy>[
    UnauthorizedCacheControlHeaderStrategy.failWith403,
    UnauthorizedCacheControlHeaderStrategy.succeedWithResponseHeader,
    UnauthorizedCacheControlHeaderStrategy.succeedWithoutResponseHeader,
  ];

  static const List<
          _i1.SmithySerializer<UnauthorizedCacheControlHeaderStrategy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'UnauthorizedCacheControlHeaderStrategy',
      values: values,
      sdkUnknown: UnauthorizedCacheControlHeaderStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension UnauthorizedCacheControlHeaderStrategyHelpers
    on List<UnauthorizedCacheControlHeaderStrategy> {
  /// Returns the value of [UnauthorizedCacheControlHeaderStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  UnauthorizedCacheControlHeaderStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [UnauthorizedCacheControlHeaderStrategy] whose value matches [value].
  UnauthorizedCacheControlHeaderStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
