// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v2.s3.model.request_payer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RequestPayer extends _i1.SmithyEnum<RequestPayer> {
  const RequestPayer._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RequestPayer._sdkUnknown(String value) : super.sdkUnknown(value);

  static const requester = RequestPayer._(
    0,
    'requester',
    'requester',
  );

  /// All values of [RequestPayer].
  static const values = <RequestPayer>[RequestPayer.requester];

  static const List<_i1.SmithySerializer<RequestPayer>> serializers = [
    _i1.SmithyEnumSerializer(
      'RequestPayer',
      values: values,
      sdkUnknown: RequestPayer._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension RequestPayerHelpers on List<RequestPayer> {
  /// Returns the value of [RequestPayer] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RequestPayer byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RequestPayer] whose value matches [value].
  RequestPayer byValue(String value) => firstWhere((el) => el.value == value);
}
