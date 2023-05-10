// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.third_party_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ThirdPartyType extends _i1.SmithyEnum<ThirdPartyType> {
  const ThirdPartyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ThirdPartyType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const hook = ThirdPartyType._(
    0,
    'HOOK',
    'HOOK',
  );

  static const module = ThirdPartyType._(
    1,
    'MODULE',
    'MODULE',
  );

  static const resource = ThirdPartyType._(
    2,
    'RESOURCE',
    'RESOURCE',
  );

  /// All values of [ThirdPartyType].
  static const values = <ThirdPartyType>[
    ThirdPartyType.hook,
    ThirdPartyType.module,
    ThirdPartyType.resource,
  ];

  static const List<_i1.SmithySerializer<ThirdPartyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ThirdPartyType',
      values: values,
      sdkUnknown: ThirdPartyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ThirdPartyTypeHelpers on List<ThirdPartyType> {
  /// Returns the value of [ThirdPartyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ThirdPartyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ThirdPartyType] whose value matches [value].
  ThirdPartyType byValue(String value) => firstWhere((el) => el.value == value);
}
