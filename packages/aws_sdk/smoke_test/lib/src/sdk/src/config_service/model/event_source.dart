// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.event_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EventSource extends _i1.SmithyEnum<EventSource> {
  const EventSource._(
    super.index,
    super.name,
    super.value,
  );

  const EventSource._sdkUnknown(super.value) : super.sdkUnknown();

  static const awsConfig = EventSource._(
    0,
    'Aws_Config',
    'aws.config',
  );

  /// All values of [EventSource].
  static const values = <EventSource>[EventSource.awsConfig];

  static const List<_i1.SmithySerializer<EventSource>> serializers = [
    _i1.SmithyEnumSerializer(
      'EventSource',
      values: values,
      sdkUnknown: EventSource._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension EventSourceHelpers on List<EventSource> {
  /// Returns the value of [EventSource] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EventSource byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EventSource] whose value matches [value].
  EventSource byValue(String value) => firstWhere((el) => el.value == value);
}
