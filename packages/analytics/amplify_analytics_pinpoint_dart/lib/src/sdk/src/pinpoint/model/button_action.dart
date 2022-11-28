// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.button_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ButtonAction extends _i1.SmithyEnum<ButtonAction> {
  const ButtonAction._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ButtonAction._sdkUnknown(String value) : super.sdkUnknown(value);

  static const close = ButtonAction._(
    0,
    'CLOSE',
    'CLOSE',
  );

  static const deepLink = ButtonAction._(
    1,
    'DEEP_LINK',
    'DEEP_LINK',
  );

  static const link = ButtonAction._(
    2,
    'LINK',
    'LINK',
  );

  /// All values of [ButtonAction].
  static const values = <ButtonAction>[
    ButtonAction.close,
    ButtonAction.deepLink,
    ButtonAction.link,
  ];

  static const List<_i1.SmithySerializer<ButtonAction>> serializers = [
    _i1.SmithyEnumSerializer(
      'ButtonAction',
      values: values,
      sdkUnknown: ButtonAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ButtonActionHelpers on List<ButtonAction> {
  /// Returns the value of [ButtonAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ButtonAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ButtonAction] whose value matches [value].
  ButtonAction byValue(String value) => firstWhere((el) => el.value == value);
}
