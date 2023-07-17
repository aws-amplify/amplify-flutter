// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.optional_object_attributes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OptionalObjectAttributes
    extends _i1.SmithyEnum<OptionalObjectAttributes> {
  const OptionalObjectAttributes._(
    super.index,
    super.name,
    super.value,
  );

  const OptionalObjectAttributes._sdkUnknown(super.value) : super.sdkUnknown();

  static const restoreStatus = OptionalObjectAttributes._(
    0,
    'RESTORE_STATUS',
    'RestoreStatus',
  );

  /// All values of [OptionalObjectAttributes].
  static const values = <OptionalObjectAttributes>[
    OptionalObjectAttributes.restoreStatus
  ];

  static const List<_i1.SmithySerializer<OptionalObjectAttributes>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OptionalObjectAttributes',
      values: values,
      sdkUnknown: OptionalObjectAttributes._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension OptionalObjectAttributesHelpers on List<OptionalObjectAttributes> {
  /// Returns the value of [OptionalObjectAttributes] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OptionalObjectAttributes byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OptionalObjectAttributes] whose value matches [value].
  OptionalObjectAttributes byValue(String value) =>
      firstWhere((el) => el.value == value);
}
