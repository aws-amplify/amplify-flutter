// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.on_failure; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OnFailure extends _i1.SmithyEnum<OnFailure> {
  const OnFailure._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OnFailure._sdkUnknown(String value) : super.sdkUnknown(value);

  static const delete = OnFailure._(
    0,
    'DELETE',
    'DELETE',
  );

  static const doNothing = OnFailure._(
    1,
    'DO_NOTHING',
    'DO_NOTHING',
  );

  static const rollback = OnFailure._(
    2,
    'ROLLBACK',
    'ROLLBACK',
  );

  /// All values of [OnFailure].
  static const values = <OnFailure>[
    OnFailure.delete,
    OnFailure.doNothing,
    OnFailure.rollback,
  ];

  static const List<_i1.SmithySerializer<OnFailure>> serializers = [
    _i1.SmithyEnumSerializer(
      'OnFailure',
      values: values,
      sdkUnknown: OnFailure._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension OnFailureHelpers on List<OnFailure> {
  /// Returns the value of [OnFailure] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OnFailure byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OnFailure] whose value matches [value].
  OnFailure byValue(String value) => firstWhere((el) => el.value == value);
}
