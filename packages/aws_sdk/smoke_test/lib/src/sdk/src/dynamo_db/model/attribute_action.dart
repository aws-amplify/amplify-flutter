// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.attribute_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AttributeAction extends _i1.SmithyEnum<AttributeAction> {
  const AttributeAction._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AttributeAction._sdkUnknown(String value) : super.sdkUnknown(value);

  static const add = AttributeAction._(
    0,
    'ADD',
    'ADD',
  );

  static const delete = AttributeAction._(
    1,
    'DELETE',
    'DELETE',
  );

  static const put = AttributeAction._(
    2,
    'PUT',
    'PUT',
  );

  /// All values of [AttributeAction].
  static const values = <AttributeAction>[
    AttributeAction.add,
    AttributeAction.delete,
    AttributeAction.put,
  ];

  static const List<_i1.SmithySerializer<AttributeAction>> serializers = [
    _i1.SmithyEnumSerializer(
      'AttributeAction',
      values: values,
      sdkUnknown: AttributeAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension AttributeActionHelpers on List<AttributeAction> {
  /// Returns the value of [AttributeAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AttributeAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AttributeAction] whose value matches [value].
  AttributeAction byValue(String value) =>
      firstWhere((el) => el.value == value);
}
