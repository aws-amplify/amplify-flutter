// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.iam_instance_profile_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IamInstanceProfileAssociationState
    extends _i1.SmithyEnum<IamInstanceProfileAssociationState> {
  const IamInstanceProfileAssociationState._(
    super.index,
    super.name,
    super.value,
  );

  const IamInstanceProfileAssociationState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const associated = IamInstanceProfileAssociationState._(
    0,
    'ASSOCIATED',
    'associated',
  );

  static const associating = IamInstanceProfileAssociationState._(
    1,
    'ASSOCIATING',
    'associating',
  );

  static const disassociated = IamInstanceProfileAssociationState._(
    2,
    'DISASSOCIATED',
    'disassociated',
  );

  static const disassociating = IamInstanceProfileAssociationState._(
    3,
    'DISASSOCIATING',
    'disassociating',
  );

  /// All values of [IamInstanceProfileAssociationState].
  static const values = <IamInstanceProfileAssociationState>[
    IamInstanceProfileAssociationState.associated,
    IamInstanceProfileAssociationState.associating,
    IamInstanceProfileAssociationState.disassociated,
    IamInstanceProfileAssociationState.disassociating,
  ];

  static const List<_i1.SmithySerializer<IamInstanceProfileAssociationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IamInstanceProfileAssociationState',
      values: values,
      sdkUnknown: IamInstanceProfileAssociationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IamInstanceProfileAssociationStateHelpers
    on List<IamInstanceProfileAssociationState> {
  /// Returns the value of [IamInstanceProfileAssociationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IamInstanceProfileAssociationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IamInstanceProfileAssociationState] whose value matches [value].
  IamInstanceProfileAssociationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
