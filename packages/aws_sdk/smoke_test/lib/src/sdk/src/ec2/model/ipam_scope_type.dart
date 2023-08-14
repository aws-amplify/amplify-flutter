// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_scope_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamScopeType extends _i1.SmithyEnum<IpamScopeType> {
  const IpamScopeType._(
    super.index,
    super.name,
    super.value,
  );

  const IpamScopeType._sdkUnknown(super.value) : super.sdkUnknown();

  static const private = IpamScopeType._(
    0,
    'private',
    'private',
  );

  static const public = IpamScopeType._(
    1,
    'public',
    'public',
  );

  /// All values of [IpamScopeType].
  static const values = <IpamScopeType>[
    IpamScopeType.private,
    IpamScopeType.public,
  ];

  static const List<_i1.SmithySerializer<IpamScopeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamScopeType',
      values: values,
      sdkUnknown: IpamScopeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamScopeTypeHelpers on List<IpamScopeType> {
  /// Returns the value of [IpamScopeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamScopeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamScopeType] whose value matches [value].
  IpamScopeType byValue(String value) => firstWhere((el) => el.value == value);
}
