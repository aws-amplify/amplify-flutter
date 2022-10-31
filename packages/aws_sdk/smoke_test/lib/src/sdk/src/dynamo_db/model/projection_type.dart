// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.projection_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ProjectionType extends _i1.SmithyEnum<ProjectionType> {
  const ProjectionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ProjectionType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const all = ProjectionType._(
    0,
    'ALL',
    'ALL',
  );

  static const include = ProjectionType._(
    1,
    'INCLUDE',
    'INCLUDE',
  );

  static const keysOnly = ProjectionType._(
    2,
    'KEYS_ONLY',
    'KEYS_ONLY',
  );

  /// All values of [ProjectionType].
  static const values = <ProjectionType>[
    ProjectionType.all,
    ProjectionType.include,
    ProjectionType.keysOnly,
  ];

  static const List<_i1.SmithySerializer<ProjectionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ProjectionType',
      values: values,
      sdkUnknown: ProjectionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ProjectionTypeHelpers on List<ProjectionType> {
  /// Returns the value of [ProjectionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ProjectionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ProjectionType] whose value matches [value].
  ProjectionType byValue(String value) => firstWhere((el) => el.value == value);
}
