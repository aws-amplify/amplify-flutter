// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.context_key_type_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContextKeyTypeEnum extends _i1.SmithyEnum<ContextKeyTypeEnum> {
  const ContextKeyTypeEnum._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ContextKeyTypeEnum._sdkUnknown(String value) : super.sdkUnknown(value);

  static const binary = ContextKeyTypeEnum._(
    0,
    'BINARY',
    'binary',
  );

  static const binaryList = ContextKeyTypeEnum._(
    1,
    'BINARY_LIST',
    'binaryList',
  );

  static const boolean = ContextKeyTypeEnum._(
    2,
    'BOOLEAN',
    'boolean',
  );

  static const booleanList = ContextKeyTypeEnum._(
    3,
    'BOOLEAN_LIST',
    'booleanList',
  );

  static const date = ContextKeyTypeEnum._(
    4,
    'DATE',
    'date',
  );

  static const dateList = ContextKeyTypeEnum._(
    5,
    'DATE_LIST',
    'dateList',
  );

  static const ip = ContextKeyTypeEnum._(
    6,
    'IP',
    'ip',
  );

  static const ipList = ContextKeyTypeEnum._(
    7,
    'IP_LIST',
    'ipList',
  );

  static const numeric = ContextKeyTypeEnum._(
    8,
    'NUMERIC',
    'numeric',
  );

  static const numericList = ContextKeyTypeEnum._(
    9,
    'NUMERIC_LIST',
    'numericList',
  );

  static const string = ContextKeyTypeEnum._(
    10,
    'STRING',
    'string',
  );

  static const stringList = ContextKeyTypeEnum._(
    11,
    'STRING_LIST',
    'stringList',
  );

  /// All values of [ContextKeyTypeEnum].
  static const values = <ContextKeyTypeEnum>[
    ContextKeyTypeEnum.binary,
    ContextKeyTypeEnum.binaryList,
    ContextKeyTypeEnum.boolean,
    ContextKeyTypeEnum.booleanList,
    ContextKeyTypeEnum.date,
    ContextKeyTypeEnum.dateList,
    ContextKeyTypeEnum.ip,
    ContextKeyTypeEnum.ipList,
    ContextKeyTypeEnum.numeric,
    ContextKeyTypeEnum.numericList,
    ContextKeyTypeEnum.string,
    ContextKeyTypeEnum.stringList,
  ];

  static const List<_i1.SmithySerializer<ContextKeyTypeEnum>> serializers = [
    _i1.SmithyEnumSerializer(
      'ContextKeyTypeEnum',
      values: values,
      sdkUnknown: ContextKeyTypeEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ContextKeyTypeEnumHelpers on List<ContextKeyTypeEnum> {
  /// Returns the value of [ContextKeyTypeEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ContextKeyTypeEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ContextKeyTypeEnum] whose value matches [value].
  ContextKeyTypeEnum byValue(String value) =>
      firstWhere((el) => el.value == value);
}
