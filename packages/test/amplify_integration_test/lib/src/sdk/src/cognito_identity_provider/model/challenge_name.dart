// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.challenge_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChallengeName extends _i1.SmithyEnum<ChallengeName> {
  const ChallengeName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChallengeName._sdkUnknown(String value) : super.sdkUnknown(value);

  static const mfa = ChallengeName._(
    0,
    'Mfa',
    'Mfa',
  );

  static const password = ChallengeName._(
    1,
    'Password',
    'Password',
  );

  /// All values of [ChallengeName].
  static const values = <ChallengeName>[
    ChallengeName.mfa,
    ChallengeName.password,
  ];

  static const List<_i1.SmithySerializer<ChallengeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChallengeName',
      values: values,
      sdkUnknown: ChallengeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ChallengeNameHelpers on List<ChallengeName> {
  /// Returns the value of [ChallengeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChallengeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChallengeName] whose value matches [value].
  ChallengeName byValue(String value) => firstWhere((el) => el.value == value);
}
