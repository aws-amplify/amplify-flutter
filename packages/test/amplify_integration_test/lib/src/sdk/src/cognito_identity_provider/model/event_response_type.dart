// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.event_response_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EventResponseType extends _i1.SmithyEnum<EventResponseType> {
  const EventResponseType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EventResponseType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const fail = EventResponseType._(
    0,
    'Fail',
    'Fail',
  );

  static const inProgress = EventResponseType._(
    1,
    'InProgress',
    'InProgress',
  );

  static const pass = EventResponseType._(
    2,
    'Pass',
    'Pass',
  );

  /// All values of [EventResponseType].
  static const values = <EventResponseType>[
    EventResponseType.fail,
    EventResponseType.inProgress,
    EventResponseType.pass,
  ];

  static const List<_i1.SmithySerializer<EventResponseType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EventResponseType',
      values: values,
      sdkUnknown: EventResponseType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension EventResponseTypeHelpers on List<EventResponseType> {
  /// Returns the value of [EventResponseType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EventResponseType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EventResponseType] whose value matches [value].
  EventResponseType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
