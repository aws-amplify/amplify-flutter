// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.restore_request_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RestoreRequestType extends _i1.SmithyEnum<RestoreRequestType> {
  const RestoreRequestType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RestoreRequestType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const select = RestoreRequestType._(
    0,
    'SELECT',
    'SELECT',
  );

  /// All values of [RestoreRequestType].
  static const values = <RestoreRequestType>[RestoreRequestType.select];

  static const List<_i1.SmithySerializer<RestoreRequestType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RestoreRequestType',
      values: values,
      sdkUnknown: RestoreRequestType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension RestoreRequestTypeHelpers on List<RestoreRequestType> {
  /// Returns the value of [RestoreRequestType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RestoreRequestType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RestoreRequestType] whose value matches [value].
  RestoreRequestType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
