// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.channel_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChannelType extends _i1.SmithyEnum<ChannelType> {
  const ChannelType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChannelType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const adm = ChannelType._(
    0,
    'ADM',
    'ADM',
  );

  static const apns = ChannelType._(
    1,
    'APNS',
    'APNS',
  );

  static const apnsSandbox = ChannelType._(
    2,
    'APNS_SANDBOX',
    'APNS_SANDBOX',
  );

  static const apnsVoip = ChannelType._(
    3,
    'APNS_VOIP',
    'APNS_VOIP',
  );

  static const apnsVoipSandbox = ChannelType._(
    4,
    'APNS_VOIP_SANDBOX',
    'APNS_VOIP_SANDBOX',
  );

  static const baidu = ChannelType._(
    5,
    'BAIDU',
    'BAIDU',
  );

  static const custom = ChannelType._(
    6,
    'CUSTOM',
    'CUSTOM',
  );

  static const email = ChannelType._(
    7,
    'EMAIL',
    'EMAIL',
  );

  static const gcm = ChannelType._(
    8,
    'GCM',
    'GCM',
  );

  static const inApp = ChannelType._(
    9,
    'IN_APP',
    'IN_APP',
  );

  static const push = ChannelType._(
    10,
    'PUSH',
    'PUSH',
  );

  static const sms = ChannelType._(
    11,
    'SMS',
    'SMS',
  );

  static const voice = ChannelType._(
    12,
    'VOICE',
    'VOICE',
  );

  /// All values of [ChannelType].
  static const values = <ChannelType>[
    ChannelType.adm,
    ChannelType.apns,
    ChannelType.apnsSandbox,
    ChannelType.apnsVoip,
    ChannelType.apnsVoipSandbox,
    ChannelType.baidu,
    ChannelType.custom,
    ChannelType.email,
    ChannelType.gcm,
    ChannelType.inApp,
    ChannelType.push,
    ChannelType.sms,
    ChannelType.voice,
  ];

  static const List<_i1.SmithySerializer<ChannelType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChannelType',
      values: values,
      sdkUnknown: ChannelType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ChannelTypeHelpers on List<ChannelType> {
  /// Returns the value of [ChannelType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChannelType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChannelType] whose value matches [value].
  ChannelType byValue(String value) => firstWhere((el) => el.value == value);
}
