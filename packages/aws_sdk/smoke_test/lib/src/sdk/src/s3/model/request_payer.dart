// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.request_payer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
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
