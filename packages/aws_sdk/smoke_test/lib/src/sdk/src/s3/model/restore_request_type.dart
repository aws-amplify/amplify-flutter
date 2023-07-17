// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.restore_request_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RestoreRequestType extends _i1.SmithyEnum<RestoreRequestType> {
  const RestoreRequestType._(
    super.index,
    super.name,
    super.value,
  );

  const RestoreRequestType._sdkUnknown(super.value) : super.sdkUnknown();

  static const select = RestoreRequestType._(
    0,
    'SELECT',
    'SELECT',
  );

  /// All values of [RestoreRequestType].
  static const values = <RestoreRequestType>[RestoreRequestType.select];

  static const List<_i1.SmithySerializer<RestoreRequestType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RestoreRequestType',
      values: values,
      sdkUnknown: RestoreRequestType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension RestoreRequestTypeHelpers on List<RestoreRequestType> {
  /// Returns the value of [RestoreRequestType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RestoreRequestType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RestoreRequestType] whose value matches [value].
  RestoreRequestType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
