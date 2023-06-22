// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.evaluation_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EvaluationMode extends _i1.SmithyEnum<EvaluationMode> {
  const EvaluationMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EvaluationMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const detective = EvaluationMode._(
    0,
    'DETECTIVE',
    'DETECTIVE',
  );

  static const proactive = EvaluationMode._(
    1,
    'PROACTIVE',
    'PROACTIVE',
  );

  /// All values of [EvaluationMode].
  static const values = <EvaluationMode>[
    EvaluationMode.detective,
    EvaluationMode.proactive,
  ];

  static const List<_i1.SmithySerializer<EvaluationMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'EvaluationMode',
      values: values,
      sdkUnknown: EvaluationMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension EvaluationModeHelpers on List<EvaluationMode> {
  /// Returns the value of [EvaluationMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EvaluationMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EvaluationMode] whose value matches [value].
  EvaluationMode byValue(String value) => firstWhere((el) => el.value == value);
}
