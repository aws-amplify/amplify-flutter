// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.request_payer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
///
/// This functionality is not supported for directory buckets.
class RequestPayer extends _i1.SmithyEnum<RequestPayer> {
  const RequestPayer._(super.index, super.name, super.value);

  const RequestPayer._sdkUnknown(super.value) : super.sdkUnknown();

  static const requester = RequestPayer._(0, 'requester', 'requester');

  /// All values of [RequestPayer].
  static const values = <RequestPayer>[RequestPayer.requester];

  static const List<_i1.SmithySerializer<RequestPayer>> serializers = [
    _i1.SmithyEnumSerializer(
      'RequestPayer',
      values: values,
      sdkUnknown: RequestPayer._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
      ],
    ),
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
