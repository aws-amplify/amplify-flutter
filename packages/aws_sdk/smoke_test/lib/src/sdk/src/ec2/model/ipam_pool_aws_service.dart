// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_aws_service; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolAwsService extends _i1.SmithyEnum<IpamPoolAwsService> {
  const IpamPoolAwsService._(
    super.index,
    super.name,
    super.value,
  );

  const IpamPoolAwsService._sdkUnknown(super.value) : super.sdkUnknown();

  static const ec2 = IpamPoolAwsService._(
    0,
    'ec2',
    'ec2',
  );

  /// All values of [IpamPoolAwsService].
  static const values = <IpamPoolAwsService>[IpamPoolAwsService.ec2];

  static const List<_i1.SmithySerializer<IpamPoolAwsService>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamPoolAwsService',
      values: values,
      sdkUnknown: IpamPoolAwsService._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolAwsServiceHelpers on List<IpamPoolAwsService> {
  /// Returns the value of [IpamPoolAwsService] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolAwsService byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolAwsService] whose value matches [value].
  IpamPoolAwsService byValue(String value) =>
      firstWhere((el) => el.value == value);
}
