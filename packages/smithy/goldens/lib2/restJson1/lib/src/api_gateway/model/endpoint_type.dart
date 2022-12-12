// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.api_gateway.model.endpoint_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EndpointType extends _i1.SmithyEnum<EndpointType> {
  const EndpointType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EndpointType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const edge = EndpointType._(
    0,
    'EDGE',
    'EDGE',
  );

  static const private = EndpointType._(
    1,
    'PRIVATE',
    'PRIVATE',
  );

  static const regional = EndpointType._(
    2,
    'REGIONAL',
    'REGIONAL',
  );

  /// All values of [EndpointType].
  static const values = <EndpointType>[
    EndpointType.edge,
    EndpointType.private,
    EndpointType.regional,
  ];

  static const List<_i1.SmithySerializer<EndpointType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EndpointType',
      values: values,
      sdkUnknown: EndpointType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension EndpointTypeHelpers on List<EndpointType> {
  /// Returns the value of [EndpointType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EndpointType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EndpointType] whose value matches [value].
  EndpointType byValue(String value) => firstWhere((el) => el.value == value);
}
