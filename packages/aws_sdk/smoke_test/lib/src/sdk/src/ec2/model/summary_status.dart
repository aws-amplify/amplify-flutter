// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.summary_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SummaryStatus extends _i1.SmithyEnum<SummaryStatus> {
  const SummaryStatus._(
    super.index,
    super.name,
    super.value,
  );

  const SummaryStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const impaired = SummaryStatus._(
    0,
    'impaired',
    'impaired',
  );

  static const initializing = SummaryStatus._(
    1,
    'initializing',
    'initializing',
  );

  static const insufficientData = SummaryStatus._(
    2,
    'insufficient_data',
    'insufficient-data',
  );

  static const notApplicable = SummaryStatus._(
    3,
    'not_applicable',
    'not-applicable',
  );

  static const ok = SummaryStatus._(
    4,
    'ok',
    'ok',
  );

  /// All values of [SummaryStatus].
  static const values = <SummaryStatus>[
    SummaryStatus.impaired,
    SummaryStatus.initializing,
    SummaryStatus.insufficientData,
    SummaryStatus.notApplicable,
    SummaryStatus.ok,
  ];

  static const List<_i1.SmithySerializer<SummaryStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'SummaryStatus',
      values: values,
      sdkUnknown: SummaryStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SummaryStatusHelpers on List<SummaryStatus> {
  /// Returns the value of [SummaryStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SummaryStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SummaryStatus] whose value matches [value].
  SummaryStatus byValue(String value) => firstWhere((el) => el.value == value);
}
