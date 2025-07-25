// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.verify_software_token_response_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VerifySoftwareTokenResponseType
    extends _i1.SmithyEnum<VerifySoftwareTokenResponseType> {
  const VerifySoftwareTokenResponseType._(super.index, super.name, super.value);

  const VerifySoftwareTokenResponseType._sdkUnknown(super.value)
    : super.sdkUnknown();

  static const error = VerifySoftwareTokenResponseType._(0, 'ERROR', 'ERROR');

  static const success = VerifySoftwareTokenResponseType._(
    1,
    'SUCCESS',
    'SUCCESS',
  );

  /// All values of [VerifySoftwareTokenResponseType].
  static const values = <VerifySoftwareTokenResponseType>[
    VerifySoftwareTokenResponseType.error,
    VerifySoftwareTokenResponseType.success,
  ];

  static const List<_i1.SmithySerializer<VerifySoftwareTokenResponseType>>
  serializers = [
    _i1.SmithyEnumSerializer(
      'VerifySoftwareTokenResponseType',
      values: values,
      sdkUnknown: VerifySoftwareTokenResponseType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ],
    ),
  ];
}

extension VerifySoftwareTokenResponseTypeHelpers
    on List<VerifySoftwareTokenResponseType> {
  /// Returns the value of [VerifySoftwareTokenResponseType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VerifySoftwareTokenResponseType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VerifySoftwareTokenResponseType] whose value matches [value].
  VerifySoftwareTokenResponseType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
