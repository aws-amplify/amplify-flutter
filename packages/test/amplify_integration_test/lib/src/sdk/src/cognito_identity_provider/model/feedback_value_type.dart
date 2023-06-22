// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.feedback_value_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FeedbackValueType extends _i1.SmithyEnum<FeedbackValueType> {
  const FeedbackValueType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FeedbackValueType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const invalid = FeedbackValueType._(
    0,
    'INVALID',
    'Invalid',
  );

  static const valid = FeedbackValueType._(
    1,
    'VALID',
    'Valid',
  );

  /// All values of [FeedbackValueType].
  static const values = <FeedbackValueType>[
    FeedbackValueType.invalid,
    FeedbackValueType.valid,
  ];

  static const List<_i1.SmithySerializer<FeedbackValueType>> serializers = [
    _i1.SmithyEnumSerializer(
      'FeedbackValueType',
      values: values,
      sdkUnknown: FeedbackValueType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension FeedbackValueTypeHelpers on List<FeedbackValueType> {
  /// Returns the value of [FeedbackValueType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FeedbackValueType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FeedbackValueType] whose value matches [value].
  FeedbackValueType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
