// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.event_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EventCode extends _i1.SmithyEnum<EventCode> {
  const EventCode._(
    super.index,
    super.name,
    super.value,
  );

  const EventCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const instanceReboot = EventCode._(
    0,
    'instance_reboot',
    'instance-reboot',
  );

  static const instanceRetirement = EventCode._(
    1,
    'instance_retirement',
    'instance-retirement',
  );

  static const instanceStop = EventCode._(
    2,
    'instance_stop',
    'instance-stop',
  );

  static const systemMaintenance = EventCode._(
    3,
    'system_maintenance',
    'system-maintenance',
  );

  static const systemReboot = EventCode._(
    4,
    'system_reboot',
    'system-reboot',
  );

  /// All values of [EventCode].
  static const values = <EventCode>[
    EventCode.instanceReboot,
    EventCode.instanceRetirement,
    EventCode.instanceStop,
    EventCode.systemMaintenance,
    EventCode.systemReboot,
  ];

  static const List<_i1.SmithySerializer<EventCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'EventCode',
      values: values,
      sdkUnknown: EventCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EventCodeHelpers on List<EventCode> {
  /// Returns the value of [EventCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EventCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EventCode] whose value matches [value].
  EventCode byValue(String value) => firstWhere((el) => el.value == value);
}
