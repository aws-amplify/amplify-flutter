// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.delivery_medium_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeliveryMediumType extends _i1.SmithyEnum<DeliveryMediumType> {
  const DeliveryMediumType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DeliveryMediumType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const email = DeliveryMediumType._(
    0,
    'EMAIL',
    'EMAIL',
  );

  static const sms = DeliveryMediumType._(
    1,
    'SMS',
    'SMS',
  );

  /// All values of [DeliveryMediumType].
  static const values = <DeliveryMediumType>[
    DeliveryMediumType.email,
    DeliveryMediumType.sms,
  ];

  static const List<_i1.SmithySerializer<DeliveryMediumType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DeliveryMediumType',
      values: values,
      sdkUnknown: DeliveryMediumType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension DeliveryMediumTypeHelpers on List<DeliveryMediumType> {
  /// Returns the value of [DeliveryMediumType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeliveryMediumType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeliveryMediumType] whose value matches [value].
  DeliveryMediumType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
