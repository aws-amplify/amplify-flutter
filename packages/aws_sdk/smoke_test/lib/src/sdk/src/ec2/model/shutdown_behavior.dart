// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.shutdown_behavior; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ShutdownBehavior extends _i1.SmithyEnum<ShutdownBehavior> {
  const ShutdownBehavior._(
    super.index,
    super.name,
    super.value,
  );

  const ShutdownBehavior._sdkUnknown(super.value) : super.sdkUnknown();

  static const stop = ShutdownBehavior._(
    0,
    'stop',
    'stop',
  );

  static const terminate = ShutdownBehavior._(
    1,
    'terminate',
    'terminate',
  );

  /// All values of [ShutdownBehavior].
  static const values = <ShutdownBehavior>[
    ShutdownBehavior.stop,
    ShutdownBehavior.terminate,
  ];

  static const List<_i1.SmithySerializer<ShutdownBehavior>> serializers = [
    _i1.SmithyEnumSerializer(
      'ShutdownBehavior',
      values: values,
      sdkUnknown: ShutdownBehavior._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ShutdownBehaviorHelpers on List<ShutdownBehavior> {
  /// Returns the value of [ShutdownBehavior] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ShutdownBehavior byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ShutdownBehavior] whose value matches [value].
  ShutdownBehavior byValue(String value) =>
      firstWhere((el) => el.value == value);
}
