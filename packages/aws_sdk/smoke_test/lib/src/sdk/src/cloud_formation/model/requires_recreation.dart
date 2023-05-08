// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.requires_recreation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RequiresRecreation extends _i1.SmithyEnum<RequiresRecreation> {
  const RequiresRecreation._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RequiresRecreation._sdkUnknown(String value) : super.sdkUnknown(value);

  static const always = RequiresRecreation._(
    0,
    'Always',
    'Always',
  );

  static const conditionally = RequiresRecreation._(
    1,
    'Conditionally',
    'Conditionally',
  );

  static const never = RequiresRecreation._(
    2,
    'Never',
    'Never',
  );

  /// All values of [RequiresRecreation].
  static const values = <RequiresRecreation>[
    RequiresRecreation.always,
    RequiresRecreation.conditionally,
    RequiresRecreation.never,
  ];

  static const List<_i1.SmithySerializer<RequiresRecreation>> serializers = [
    _i1.SmithyEnumSerializer(
      'RequiresRecreation',
      values: values,
      sdkUnknown: RequiresRecreation._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension RequiresRecreationHelpers on List<RequiresRecreation> {
  /// Returns the value of [RequiresRecreation] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RequiresRecreation byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RequiresRecreation] whose value matches [value].
  RequiresRecreation byValue(String value) =>
      firstWhere((el) => el.value == value);
}
