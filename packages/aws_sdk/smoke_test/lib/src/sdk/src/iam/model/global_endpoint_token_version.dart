// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.global_endpoint_token_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class GlobalEndpointTokenVersion
    extends _i1.SmithyEnum<GlobalEndpointTokenVersion> {
  const GlobalEndpointTokenVersion._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const GlobalEndpointTokenVersion._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const v1Token = GlobalEndpointTokenVersion._(
    0,
    'v1Token',
    'v1Token',
  );

  static const v2Token = GlobalEndpointTokenVersion._(
    1,
    'v2Token',
    'v2Token',
  );

  /// All values of [GlobalEndpointTokenVersion].
  static const values = <GlobalEndpointTokenVersion>[
    GlobalEndpointTokenVersion.v1Token,
    GlobalEndpointTokenVersion.v2Token,
  ];

  static const List<_i1.SmithySerializer<GlobalEndpointTokenVersion>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'globalEndpointTokenVersion',
      values: values,
      sdkUnknown: GlobalEndpointTokenVersion._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension GlobalEndpointTokenVersionHelpers
    on List<GlobalEndpointTokenVersion> {
  /// Returns the value of [GlobalEndpointTokenVersion] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  GlobalEndpointTokenVersion byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [GlobalEndpointTokenVersion] whose value matches [value].
  GlobalEndpointTokenVersion byValue(String value) =>
      firstWhere((el) => el.value == value);
}
