// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.event_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EventType extends _i1.SmithyEnum<EventType> {
  const EventType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EventType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const forgotPassword = EventType._(
    0,
    'ForgotPassword',
    'ForgotPassword',
  );

  static const passwordChange = EventType._(
    1,
    'PasswordChange',
    'PasswordChange',
  );

  static const resendCode = EventType._(
    2,
    'ResendCode',
    'ResendCode',
  );

  static const signIn = EventType._(
    3,
    'SignIn',
    'SignIn',
  );

  static const signUp = EventType._(
    4,
    'SignUp',
    'SignUp',
  );

  /// All values of [EventType].
  static const values = <EventType>[
    EventType.forgotPassword,
    EventType.passwordChange,
    EventType.resendCode,
    EventType.signIn,
    EventType.signUp,
  ];

  static const List<_i1.SmithySerializer<EventType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EventType',
      values: values,
      sdkUnknown: EventType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension EventTypeHelpers on List<EventType> {
  /// Returns the value of [EventType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EventType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EventType] whose value matches [value].
  EventType byValue(String value) => firstWhere((el) => el.value == value);
}
