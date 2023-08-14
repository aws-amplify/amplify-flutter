// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.findings_found; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FindingsFound extends _i1.SmithyEnum<FindingsFound> {
  const FindingsFound._(
    super.index,
    super.name,
    super.value,
  );

  const FindingsFound._sdkUnknown(super.value) : super.sdkUnknown();

  static const false$ = FindingsFound._(
    0,
    'false',
    'false',
  );

  static const true$ = FindingsFound._(
    1,
    'true',
    'true',
  );

  static const unknown = FindingsFound._(
    2,
    'unknown',
    'unknown',
  );

  /// All values of [FindingsFound].
  static const values = <FindingsFound>[
    FindingsFound.false$,
    FindingsFound.true$,
    FindingsFound.unknown,
  ];

  static const List<_i1.SmithySerializer<FindingsFound>> serializers = [
    _i1.SmithyEnumSerializer(
      'FindingsFound',
      values: values,
      sdkUnknown: FindingsFound._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FindingsFoundHelpers on List<FindingsFound> {
  /// Returns the value of [FindingsFound] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FindingsFound byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FindingsFound] whose value matches [value].
  FindingsFound byValue(String value) => firstWhere((el) => el.value == value);
}
