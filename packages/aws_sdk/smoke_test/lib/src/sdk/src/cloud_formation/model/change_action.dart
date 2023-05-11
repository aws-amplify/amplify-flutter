// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChangeAction extends _i1.SmithyEnum<ChangeAction> {
  const ChangeAction._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChangeAction._sdkUnknown(String value) : super.sdkUnknown(value);

  static const add = ChangeAction._(
    0,
    'Add',
    'Add',
  );

  static const dynamic = ChangeAction._(
    1,
    'Dynamic',
    'Dynamic',
  );

  static const import = ChangeAction._(
    2,
    'Import',
    'Import',
  );

  static const modify = ChangeAction._(
    3,
    'Modify',
    'Modify',
  );

  static const remove = ChangeAction._(
    4,
    'Remove',
    'Remove',
  );

  /// All values of [ChangeAction].
  static const values = <ChangeAction>[
    ChangeAction.add,
    ChangeAction.dynamic,
    ChangeAction.import,
    ChangeAction.modify,
    ChangeAction.remove,
  ];

  static const List<_i1.SmithySerializer<ChangeAction>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChangeAction',
      values: values,
      sdkUnknown: ChangeAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ChangeActionHelpers on List<ChangeAction> {
  /// Returns the value of [ChangeAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChangeAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChangeAction] whose value matches [value].
  ChangeAction byValue(String value) => firstWhere((el) => el.value == value);
}
