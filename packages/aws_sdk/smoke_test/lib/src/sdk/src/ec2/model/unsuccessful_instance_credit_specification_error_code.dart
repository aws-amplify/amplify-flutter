// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unsuccessful_instance_credit_specification_error_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class UnsuccessfulInstanceCreditSpecificationErrorCode
    extends _i1.SmithyEnum<UnsuccessfulInstanceCreditSpecificationErrorCode> {
  const UnsuccessfulInstanceCreditSpecificationErrorCode._(
    super.index,
    super.name,
    super.value,
  );

  const UnsuccessfulInstanceCreditSpecificationErrorCode._sdkUnknown(
      super.value)
      : super.sdkUnknown();

  static const incorrectInstanceState =
      UnsuccessfulInstanceCreditSpecificationErrorCode._(
    0,
    'INCORRECT_INSTANCE_STATE',
    'IncorrectInstanceState',
  );

  static const instanceCreditSpecificationNotSupported =
      UnsuccessfulInstanceCreditSpecificationErrorCode._(
    1,
    'INSTANCE_CREDIT_SPECIFICATION_NOT_SUPPORTED',
    'InstanceCreditSpecification.NotSupported',
  );

  static const instanceNotFound =
      UnsuccessfulInstanceCreditSpecificationErrorCode._(
    2,
    'INSTANCE_NOT_FOUND',
    'InvalidInstanceID.NotFound',
  );

  static const invalidInstanceId =
      UnsuccessfulInstanceCreditSpecificationErrorCode._(
    3,
    'INVALID_INSTANCE_ID',
    'InvalidInstanceID.Malformed',
  );

  /// All values of [UnsuccessfulInstanceCreditSpecificationErrorCode].
  static const values = <UnsuccessfulInstanceCreditSpecificationErrorCode>[
    UnsuccessfulInstanceCreditSpecificationErrorCode.incorrectInstanceState,
    UnsuccessfulInstanceCreditSpecificationErrorCode
        .instanceCreditSpecificationNotSupported,
    UnsuccessfulInstanceCreditSpecificationErrorCode.instanceNotFound,
    UnsuccessfulInstanceCreditSpecificationErrorCode.invalidInstanceId,
  ];

  static const List<
      _i1.SmithySerializer<
          UnsuccessfulInstanceCreditSpecificationErrorCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'UnsuccessfulInstanceCreditSpecificationErrorCode',
      values: values,
      sdkUnknown: UnsuccessfulInstanceCreditSpecificationErrorCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension UnsuccessfulInstanceCreditSpecificationErrorCodeHelpers
    on List<UnsuccessfulInstanceCreditSpecificationErrorCode> {
  /// Returns the value of [UnsuccessfulInstanceCreditSpecificationErrorCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  UnsuccessfulInstanceCreditSpecificationErrorCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [UnsuccessfulInstanceCreditSpecificationErrorCode] whose value matches [value].
  UnsuccessfulInstanceCreditSpecificationErrorCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
