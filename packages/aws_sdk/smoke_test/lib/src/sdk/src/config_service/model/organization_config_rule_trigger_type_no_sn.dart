// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.organization_config_rule_trigger_type_no_sn; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrganizationConfigRuleTriggerTypeNoSn
    extends _i1.SmithyEnum<OrganizationConfigRuleTriggerTypeNoSn> {
  const OrganizationConfigRuleTriggerTypeNoSn._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OrganizationConfigRuleTriggerTypeNoSn._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const configurationItemChangeNotification =
      OrganizationConfigRuleTriggerTypeNoSn._(
    0,
    'CONFIGURATION_ITEM_CHANGE_NOTIFICATION',
    'ConfigurationItemChangeNotification',
  );

  static const oversizedConfigurationItemChangeNotifcation =
      OrganizationConfigRuleTriggerTypeNoSn._(
    1,
    'OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION',
    'OversizedConfigurationItemChangeNotification',
  );

  /// All values of [OrganizationConfigRuleTriggerTypeNoSn].
  static const values = <OrganizationConfigRuleTriggerTypeNoSn>[
    OrganizationConfigRuleTriggerTypeNoSn.configurationItemChangeNotification,
    OrganizationConfigRuleTriggerTypeNoSn
        .oversizedConfigurationItemChangeNotifcation,
  ];

  static const List<_i1.SmithySerializer<OrganizationConfigRuleTriggerTypeNoSn>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OrganizationConfigRuleTriggerTypeNoSN',
      values: values,
      sdkUnknown: OrganizationConfigRuleTriggerTypeNoSn._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OrganizationConfigRuleTriggerTypeNoSnHelpers
    on List<OrganizationConfigRuleTriggerTypeNoSn> {
  /// Returns the value of [OrganizationConfigRuleTriggerTypeNoSn] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrganizationConfigRuleTriggerTypeNoSn byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrganizationConfigRuleTriggerTypeNoSn] whose value matches [value].
  OrganizationConfigRuleTriggerTypeNoSn byValue(String value) =>
      firstWhere((el) => el.value == value);
}
