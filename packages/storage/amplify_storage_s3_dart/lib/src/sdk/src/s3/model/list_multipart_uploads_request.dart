// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.list_multipart_uploads_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/encoding_type.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_payer.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'list_multipart_uploads_request.g.dart';

abstract class ListMultipartUploadsRequest
    with
        _i1.HttpInput<ListMultipartUploadsRequestPayload>,
        _i2.AWSEquatable<ListMultipartUploadsRequest>
    implements
        Built<ListMultipartUploadsRequest, ListMultipartUploadsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListMultipartUploadsRequestPayload> {
  factory ListMultipartUploadsRequest({
    required String bucket,
    String? delimiter,
    EncodingType? encodingType,
    String? keyMarker,
    int? maxUploads,
    String? prefix,
    String? uploadIdMarker,
    String? expectedBucketOwner,
    RequestPayer? requestPayer,
  }) {
    return _$ListMultipartUploadsRequest._(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      keyMarker: keyMarker,
      maxUploads: maxUploads,
      prefix: prefix,
      uploadIdMarker: uploadIdMarker,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
    );
  }

  factory ListMultipartUploadsRequest.build(
          [void Function(ListMultipartUploadsRequestBuilder) updates]) =
      _$ListMultipartUploadsRequest;

  const ListMultipartUploadsRequest._();

  factory ListMultipartUploadsRequest.fromRequest(
    ListMultipartUploadsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListMultipartUploadsRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.queryParameters['delimiter'] != null) {
          b.delimiter = request.queryParameters['delimiter']!;
        }
        if (request.queryParameters['encoding-type'] != null) {
          b.encodingType = EncodingType.values
              .byValue(request.queryParameters['encoding-type']!);
        }
        if (request.queryParameters['key-marker'] != null) {
          b.keyMarker = request.queryParameters['key-marker']!;
        }
        if (request.queryParameters['max-uploads'] != null) {
          b.maxUploads = int.parse(request.queryParameters['max-uploads']!);
        }
        if (request.queryParameters['prefix'] != null) {
          b.prefix = request.queryParameters['prefix']!;
        }
        if (request.queryParameters['upload-id-marker'] != null) {
          b.uploadIdMarker = request.queryParameters['upload-id-marker']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<ListMultipartUploadsRequestPayload>>
      serializers = [ListMultipartUploadsRequestRestXmlSerializer()];

  /// The name of the bucket to which the multipart upload was initiated.
  ///
  /// **Directory buckets** \- When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format `_Bucket_name_.s3express-_az_id_._region_.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format `_bucket\_base\_name_--_az-id_--x-s3` (for example, `_DOC-EXAMPLE-BUCKET_--_usw2-az2_--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the _Amazon S3 User Guide_.
  ///
  /// **Access points** \- When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// Access points and Object Lambda access points are not supported by directory buckets.
  ///
  /// **S3 on Outposts** \- When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Character you use to group keys.
  ///
  /// All keys that contain the same string between the prefix, if specified, and the first occurrence of the delimiter after the prefix are grouped under a single result element, `CommonPrefixes`. If you don't specify the prefix parameter, then the substring starts at the beginning of the key. The keys that are grouped under `CommonPrefixes` result element are not returned elsewhere in the response.
  ///
  /// **Directory buckets** \- For directory buckets, `/` is the only supported delimiter.
  String? get delimiter;

  /// Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key can contain any Unicode character; however, the XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
  EncodingType? get encodingType;

  /// Specifies the multipart upload after which listing should begin.
  ///
  /// *   **General purpose buckets** \- For general purpose buckets, `key-marker` is an object key. Together with `upload-id-marker`, this parameter specifies the multipart upload after which listing should begin.
  ///
  ///     If `upload-id-marker` is not specified, only the keys lexicographically greater than the specified `key-marker` will be included in the list.
  ///
  ///     If `upload-id-marker` is specified, any multipart uploads for a key equal to the `key-marker` might also be included, provided those multipart uploads have upload IDs lexicographically greater than the specified `upload-id-marker`.
  ///
  /// *   **Directory buckets** \- For directory buckets, `key-marker` is obfuscated and isn't a real object key. The `upload-id-marker` parameter isn't supported by directory buckets. To list the additional multipart uploads, you only need to set the value of `key-marker` to the `NextKeyMarker` value from the previous response.
  ///
  ///     In the `ListMultipartUploads` response, the multipart uploads aren't sorted lexicographically based on the object keys.
  String? get keyMarker;

  /// Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.
  int? get maxUploads;

  /// Lists in-progress uploads only for those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different grouping of keys. (You can think of using `prefix` to make groups in the same way that you'd use a folder in a file system.)
  ///
  /// **Directory buckets** \- For directory buckets, only prefixes that end in a delimiter (`/`) are supported.
  String? get prefix;

  /// Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads for a key equal to the key-marker might be included in the list only if they have an upload ID lexicographically greater than the specified `upload-id-marker`.
  ///
  /// This functionality is not supported for directory buckets.
  String? get uploadIdMarker;

  /// The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for corresponding charges to copy the object. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets.
  RequestPayer? get requestPayer;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  ListMultipartUploadsRequestPayload getPayload() =>
      ListMultipartUploadsRequestPayload();

  @override
  List<Object?> get props => [
        bucket,
        delimiter,
        encodingType,
        keyMarker,
        maxUploads,
        prefix,
        uploadIdMarker,
        expectedBucketOwner,
        requestPayer,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListMultipartUploadsRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'delimiter',
        delimiter,
      )
      ..add(
        'encodingType',
        encodingType,
      )
      ..add(
        'keyMarker',
        keyMarker,
      )
      ..add(
        'maxUploads',
        maxUploads,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'uploadIdMarker',
        uploadIdMarker,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'requestPayer',
        requestPayer,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class ListMultipartUploadsRequestPayload
    with
        _i2.AWSEquatable<ListMultipartUploadsRequestPayload>
    implements
        Built<ListMultipartUploadsRequestPayload,
            ListMultipartUploadsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListMultipartUploadsRequestPayload(
          [void Function(ListMultipartUploadsRequestPayloadBuilder) updates]) =
      _$ListMultipartUploadsRequestPayload;

  const ListMultipartUploadsRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListMultipartUploadsRequestPayload');
    return helper.toString();
  }
}

class ListMultipartUploadsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ListMultipartUploadsRequestPayload> {
  const ListMultipartUploadsRequestRestXmlSerializer()
      : super('ListMultipartUploadsRequest');

  @override
  Iterable<Type> get types => const [
        ListMultipartUploadsRequest,
        _$ListMultipartUploadsRequest,
        ListMultipartUploadsRequestPayload,
        _$ListMultipartUploadsRequestPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ListMultipartUploadsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListMultipartUploadsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListMultipartUploadsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListMultipartUploadsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
