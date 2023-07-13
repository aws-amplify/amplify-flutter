// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.amplify_sub_category; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AmplifySubCategory extends _i1.SmithyEnum<AmplifySubCategory> {
  const AmplifySubCategory._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AmplifySubCategory._sdkUnknown(String value) : super.sdkUnknown(value);

  static const inappMessaging = AmplifySubCategory._(
    0,
    'INAPP_MESSAGING',
    'INAPP_MESSAGING',
  );

  static const pushNotifications = AmplifySubCategory._(
    1,
    'PUSH_NOTIFICATIONS',
    'PUSH_NOTIFICATIONS',
  );

  /// All values of [AmplifySubCategory].
  static const values = <AmplifySubCategory>[
    AmplifySubCategory.inappMessaging,
    AmplifySubCategory.pushNotifications,
  ];

  static const List<_i1.SmithySerializer<AmplifySubCategory>> serializers = [
    _i1.SmithyEnumSerializer(
      'AmplifySubCategory',
      values: values,
      sdkUnknown: AmplifySubCategory._sdkUnknown,
      supportedProtocols: [],
    )
  ];
}

extension AmplifySubCategoryHelpers on List<AmplifySubCategory> {
  /// Returns the value of [AmplifySubCategory] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AmplifySubCategory byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AmplifySubCategory] whose value matches [value].
  AmplifySubCategory byValue(String value) =>
      firstWhere((el) => el.value == value);
}
