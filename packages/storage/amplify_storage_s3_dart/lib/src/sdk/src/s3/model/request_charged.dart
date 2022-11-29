// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.request_charged; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// If present, indicates that the requester was successfully charged for the request.
class RequestCharged extends _i1.SmithyEnum<RequestCharged> {
  const RequestCharged._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RequestCharged._sdkUnknown(String value) : super.sdkUnknown(value);

  static const requester = RequestCharged._(
    0,
    'requester',
    'requester',
  );

  /// All values of [RequestCharged].
  static const values = <RequestCharged>[RequestCharged.requester];

  static const List<_i1.SmithySerializer<RequestCharged>> serializers = [
    _i1.SmithyEnumSerializer(
      'RequestCharged',
      values: values,
      sdkUnknown: RequestCharged._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension RequestChargedHelpers on List<RequestCharged> {
  /// Returns the value of [RequestCharged] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RequestCharged byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RequestCharged] whose value matches [value].
  RequestCharged byValue(String value) => firstWhere((el) => el.value == value);
}
