// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_amplify_sub_category; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AWSAmplifySubCategory extends _i1.SmithyEnum<AWSAmplifySubCategory> {
  const AWSAmplifySubCategory._(
    super.index,
    super.name,
    super.value,
  );

  const AWSAmplifySubCategory._sdkUnknown(super.value) : super.sdkUnknown();

  static const inappMessaging = AWSAmplifySubCategory._(
    0,
    'INAPP_MESSAGING',
    'INAPP_MESSAGING',
  );

  static const pushNotifications = AWSAmplifySubCategory._(
    1,
    'PUSH_NOTIFICATIONS',
    'PUSH_NOTIFICATIONS',
  );

  /// All values of [AWSAmplifySubCategory].
  static const values = <AWSAmplifySubCategory>[
    AWSAmplifySubCategory.inappMessaging,
    AWSAmplifySubCategory.pushNotifications,
  ];

  static const List<_i1.SmithySerializer<AWSAmplifySubCategory>> serializers = [
    _i1.SmithyEnumSerializer(
      'AWSAmplifySubCategory',
      values: values,
      sdkUnknown: AWSAmplifySubCategory._sdkUnknown,
      supportedProtocols: [],
    )
  ];
}

extension AWSAmplifySubCategoryHelpers on List<AWSAmplifySubCategory> {
  /// Returns the value of [AWSAmplifySubCategory] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AWSAmplifySubCategory byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AWSAmplifySubCategory] whose value matches [value].
  AWSAmplifySubCategory byValue(String value) =>
      firstWhere((el) => el.value == value);
}
