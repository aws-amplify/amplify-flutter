// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.prefix_list_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PrefixListState extends _i1.SmithyEnum<PrefixListState> {
  const PrefixListState._(
    super.index,
    super.name,
    super.value,
  );

  const PrefixListState._sdkUnknown(super.value) : super.sdkUnknown();

  static const createComplete = PrefixListState._(
    0,
    'create_complete',
    'create-complete',
  );

  static const createFailed = PrefixListState._(
    1,
    'create_failed',
    'create-failed',
  );

  static const createInProgress = PrefixListState._(
    2,
    'create_in_progress',
    'create-in-progress',
  );

  static const deleteComplete = PrefixListState._(
    3,
    'delete_complete',
    'delete-complete',
  );

  static const deleteFailed = PrefixListState._(
    4,
    'delete_failed',
    'delete-failed',
  );

  static const deleteInProgress = PrefixListState._(
    5,
    'delete_in_progress',
    'delete-in-progress',
  );

  static const modifyComplete = PrefixListState._(
    6,
    'modify_complete',
    'modify-complete',
  );

  static const modifyFailed = PrefixListState._(
    7,
    'modify_failed',
    'modify-failed',
  );

  static const modifyInProgress = PrefixListState._(
    8,
    'modify_in_progress',
    'modify-in-progress',
  );

  static const restoreComplete = PrefixListState._(
    9,
    'restore_complete',
    'restore-complete',
  );

  static const restoreFailed = PrefixListState._(
    10,
    'restore_failed',
    'restore-failed',
  );

  static const restoreInProgress = PrefixListState._(
    11,
    'restore_in_progress',
    'restore-in-progress',
  );

  /// All values of [PrefixListState].
  static const values = <PrefixListState>[
    PrefixListState.createComplete,
    PrefixListState.createFailed,
    PrefixListState.createInProgress,
    PrefixListState.deleteComplete,
    PrefixListState.deleteFailed,
    PrefixListState.deleteInProgress,
    PrefixListState.modifyComplete,
    PrefixListState.modifyFailed,
    PrefixListState.modifyInProgress,
    PrefixListState.restoreComplete,
    PrefixListState.restoreFailed,
    PrefixListState.restoreInProgress,
  ];

  static const List<_i1.SmithySerializer<PrefixListState>> serializers = [
    _i1.SmithyEnumSerializer(
      'PrefixListState',
      values: values,
      sdkUnknown: PrefixListState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PrefixListStateHelpers on List<PrefixListState> {
  /// Returns the value of [PrefixListState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PrefixListState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PrefixListState] whose value matches [value].
  PrefixListState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
