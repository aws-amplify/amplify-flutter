// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.on_stack_failure; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OnStackFailure extends _i1.SmithyEnum<OnStackFailure> {
  const OnStackFailure._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OnStackFailure._sdkUnknown(String value) : super.sdkUnknown(value);

  static const delete = OnStackFailure._(
    0,
    'DELETE',
    'DELETE',
  );

  static const doNothing = OnStackFailure._(
    1,
    'DO_NOTHING',
    'DO_NOTHING',
  );

  static const rollback = OnStackFailure._(
    2,
    'ROLLBACK',
    'ROLLBACK',
  );

  /// All values of [OnStackFailure].
  static const values = <OnStackFailure>[
    OnStackFailure.delete,
    OnStackFailure.doNothing,
    OnStackFailure.rollback,
  ];

  static const List<_i1.SmithySerializer<OnStackFailure>> serializers = [
    _i1.SmithyEnumSerializer(
      'OnStackFailure',
      values: values,
      sdkUnknown: OnStackFailure._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension OnStackFailureHelpers on List<OnStackFailure> {
  /// Returns the value of [OnStackFailure] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OnStackFailure byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OnStackFailure] whose value matches [value].
  OnStackFailure byValue(String value) => firstWhere((el) => el.value == value);
}
