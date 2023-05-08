// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.call_as; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CallAs extends _i1.SmithyEnum<CallAs> {
  const CallAs._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CallAs._sdkUnknown(String value) : super.sdkUnknown(value);

  static const delegatedAdmin = CallAs._(
    0,
    'DELEGATED_ADMIN',
    'DELEGATED_ADMIN',
  );

  static const self = CallAs._(
    1,
    'SELF',
    'SELF',
  );

  /// All values of [CallAs].
  static const values = <CallAs>[
    CallAs.delegatedAdmin,
    CallAs.self,
  ];

  static const List<_i1.SmithySerializer<CallAs>> serializers = [
    _i1.SmithyEnumSerializer(
      'CallAs',
      values: values,
      sdkUnknown: CallAs._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension CallAsHelpers on List<CallAs> {
  /// Returns the value of [CallAs] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CallAs byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CallAs] whose value matches [value].
  CallAs byValue(String value) => firstWhere((el) => el.value == value);
}
