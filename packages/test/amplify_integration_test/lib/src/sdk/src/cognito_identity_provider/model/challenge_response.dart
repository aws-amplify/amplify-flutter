// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.challenge_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChallengeResponse extends _i1.SmithyEnum<ChallengeResponse> {
  const ChallengeResponse._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChallengeResponse._sdkUnknown(String value) : super.sdkUnknown(value);

  static const failure = ChallengeResponse._(
    0,
    'Failure',
    'Failure',
  );

  static const success = ChallengeResponse._(
    1,
    'Success',
    'Success',
  );

  /// All values of [ChallengeResponse].
  static const values = <ChallengeResponse>[
    ChallengeResponse.failure,
    ChallengeResponse.success,
  ];

  static const List<_i1.SmithySerializer<ChallengeResponse>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChallengeResponse',
      values: values,
      sdkUnknown: ChallengeResponse._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ChallengeResponseHelpers on List<ChallengeResponse> {
  /// Returns the value of [ChallengeResponse] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChallengeResponse byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChallengeResponse] whose value matches [value].
  ChallengeResponse byValue(String value) =>
      firstWhere((el) => el.value == value);
}
