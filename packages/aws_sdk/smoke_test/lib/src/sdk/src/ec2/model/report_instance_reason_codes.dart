// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.report_instance_reason_codes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReportInstanceReasonCodes
    extends _i1.SmithyEnum<ReportInstanceReasonCodes> {
  const ReportInstanceReasonCodes._(
    super.index,
    super.name,
    super.value,
  );

  const ReportInstanceReasonCodes._sdkUnknown(super.value) : super.sdkUnknown();

  static const instanceStuckInState = ReportInstanceReasonCodes._(
    0,
    'instance_stuck_in_state',
    'instance-stuck-in-state',
  );

  static const notAcceptingCredentials = ReportInstanceReasonCodes._(
    1,
    'not_accepting_credentials',
    'not-accepting-credentials',
  );

  static const other = ReportInstanceReasonCodes._(
    2,
    'other',
    'other',
  );

  static const passwordNotAvailable = ReportInstanceReasonCodes._(
    3,
    'password_not_available',
    'password-not-available',
  );

  static const performanceEbsVolume = ReportInstanceReasonCodes._(
    4,
    'performance_ebs_volume',
    'performance-ebs-volume',
  );

  static const performanceInstanceStore = ReportInstanceReasonCodes._(
    5,
    'performance_instance_store',
    'performance-instance-store',
  );

  static const performanceNetwork = ReportInstanceReasonCodes._(
    6,
    'performance_network',
    'performance-network',
  );

  static const performanceOther = ReportInstanceReasonCodes._(
    7,
    'performance_other',
    'performance-other',
  );

  static const unresponsive = ReportInstanceReasonCodes._(
    8,
    'unresponsive',
    'unresponsive',
  );

  /// All values of [ReportInstanceReasonCodes].
  static const values = <ReportInstanceReasonCodes>[
    ReportInstanceReasonCodes.instanceStuckInState,
    ReportInstanceReasonCodes.notAcceptingCredentials,
    ReportInstanceReasonCodes.other,
    ReportInstanceReasonCodes.passwordNotAvailable,
    ReportInstanceReasonCodes.performanceEbsVolume,
    ReportInstanceReasonCodes.performanceInstanceStore,
    ReportInstanceReasonCodes.performanceNetwork,
    ReportInstanceReasonCodes.performanceOther,
    ReportInstanceReasonCodes.unresponsive,
  ];

  static const List<_i1.SmithySerializer<ReportInstanceReasonCodes>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ReportInstanceReasonCodes',
      values: values,
      sdkUnknown: ReportInstanceReasonCodes._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ReportInstanceReasonCodesHelpers on List<ReportInstanceReasonCodes> {
  /// Returns the value of [ReportInstanceReasonCodes] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReportInstanceReasonCodes byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReportInstanceReasonCodes] whose value matches [value].
  ReportInstanceReasonCodes byValue(String value) =>
      firstWhere((el) => el.value == value);
}
