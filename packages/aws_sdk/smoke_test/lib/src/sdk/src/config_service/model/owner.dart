// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.owner; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Owner extends _i1.SmithyEnum<Owner> {
  const Owner._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Owner._sdkUnknown(String value) : super.sdkUnknown(value);

  static const aws = Owner._(
    0,
    'Aws',
    'AWS',
  );

  static const customLambda = Owner._(
    1,
    'Custom_Lambda',
    'CUSTOM_LAMBDA',
  );

  static const customPolicy = Owner._(
    2,
    'Custom_Policy',
    'CUSTOM_POLICY',
  );

  /// All values of [Owner].
  static const values = <Owner>[
    Owner.aws,
    Owner.customLambda,
    Owner.customPolicy,
  ];

  static const List<_i1.SmithySerializer<Owner>> serializers = [
    _i1.SmithyEnumSerializer(
      'Owner',
      values: values,
      sdkUnknown: Owner._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OwnerHelpers on List<Owner> {
  /// Returns the value of [Owner] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Owner byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Owner] whose value matches [value].
  Owner byValue(String value) => firstWhere((el) => el.value == value);
}
