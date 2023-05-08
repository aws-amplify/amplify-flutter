// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.report_state_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReportStateType extends _i1.SmithyEnum<ReportStateType> {
  const ReportStateType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReportStateType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const complete = ReportStateType._(
    0,
    'COMPLETE',
    'COMPLETE',
  );

  static const inprogress = ReportStateType._(
    1,
    'INPROGRESS',
    'INPROGRESS',
  );

  static const started = ReportStateType._(
    2,
    'STARTED',
    'STARTED',
  );

  /// All values of [ReportStateType].
  static const values = <ReportStateType>[
    ReportStateType.complete,
    ReportStateType.inprogress,
    ReportStateType.started,
  ];

  static const List<_i1.SmithySerializer<ReportStateType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReportStateType',
      values: values,
      sdkUnknown: ReportStateType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ReportStateTypeHelpers on List<ReportStateType> {
  /// Returns the value of [ReportStateType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReportStateType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReportStateType] whose value matches [value].
  ReportStateType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
