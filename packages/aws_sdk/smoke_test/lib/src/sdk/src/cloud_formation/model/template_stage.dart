// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.template_stage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TemplateStage extends _i1.SmithyEnum<TemplateStage> {
  const TemplateStage._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TemplateStage._sdkUnknown(String value) : super.sdkUnknown(value);

  static const original = TemplateStage._(
    0,
    'Original',
    'Original',
  );

  static const processed = TemplateStage._(
    1,
    'Processed',
    'Processed',
  );

  /// All values of [TemplateStage].
  static const values = <TemplateStage>[
    TemplateStage.original,
    TemplateStage.processed,
  ];

  static const List<_i1.SmithySerializer<TemplateStage>> serializers = [
    _i1.SmithyEnumSerializer(
      'TemplateStage',
      values: values,
      sdkUnknown: TemplateStage._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension TemplateStageHelpers on List<TemplateStage> {
  /// Returns the value of [TemplateStage] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TemplateStage byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TemplateStage] whose value matches [value].
  TemplateStage byValue(String value) => firstWhere((el) => el.value == value);
}
