// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.s3.model.request_payer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RequestPayer extends _i1.SmithyEnum<RequestPayer> {
  const RequestPayer._(
    super.index,
    super.name,
    super.value,
  );

  const RequestPayer._sdkUnknown(super.value) : super.sdkUnknown();

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
