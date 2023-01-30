// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_config_rule_trigger_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrganizationConfigRuleTriggerType
    extends _i1.SmithyEnum<OrganizationConfigRuleTriggerType> {
  const OrganizationConfigRuleTriggerType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OrganizationConfigRuleTriggerType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const configurationItemChangeNotification =
      OrganizationConfigRuleTriggerType._(
    0,
    'CONFIGURATION_ITEM_CHANGE_NOTIFICATION',
    'ConfigurationItemChangeNotification',
  );

  static const oversizedConfigurationItemChangeNotifcation =
      OrganizationConfigRuleTriggerType._(
    1,
    'OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION',
    'OversizedConfigurationItemChangeNotification',
  );

  static const scheduledNotification = OrganizationConfigRuleTriggerType._(
    2,
    'SCHEDULED_NOTIFICATION',
    'ScheduledNotification',
  );

  /// All values of [OrganizationConfigRuleTriggerType].
  static const values = <OrganizationConfigRuleTriggerType>[
    OrganizationConfigRuleTriggerType.configurationItemChangeNotification,
    OrganizationConfigRuleTriggerType
        .oversizedConfigurationItemChangeNotifcation,
    OrganizationConfigRuleTriggerType.scheduledNotification,
  ];

  static const List<_i1.SmithySerializer<OrganizationConfigRuleTriggerType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OrganizationConfigRuleTriggerType',
      values: values,
      sdkUnknown: OrganizationConfigRuleTriggerType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OrganizationConfigRuleTriggerTypeHelpers
    on List<OrganizationConfigRuleTriggerType> {
  /// Returns the value of [OrganizationConfigRuleTriggerType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrganizationConfigRuleTriggerType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrganizationConfigRuleTriggerType] whose value matches [value].
  OrganizationConfigRuleTriggerType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
