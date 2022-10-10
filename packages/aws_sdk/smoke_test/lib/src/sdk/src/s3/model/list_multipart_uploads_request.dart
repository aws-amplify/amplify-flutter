// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_multipart_uploads_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i3;

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
    _i3.EncodingType? encodingType,
    String? expectedBucketOwner,
    String? keyMarker,
    int? maxUploads,
    String? prefix,
    String? uploadIdMarker,
  }) {
    return _$ListMultipartUploadsRequest._(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      expectedBucketOwner: expectedBucketOwner,
      keyMarker: keyMarker,
      maxUploads: maxUploads,
      prefix: prefix,
      uploadIdMarker: uploadIdMarker,
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
        if (request.queryParameters['delimiter'] != null) {
          b.delimiter = request.queryParameters['delimiter']!;
        }
        if (request.queryParameters['encoding-type'] != null) {
          b.encodingType = _i3.EncodingType.values
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

  static const List<_i1.SmithySerializer> serializers = [
    ListMultipartUploadsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListMultipartUploadsRequestBuilder b) {}

  /// The name of the bucket to which the multipart upload was initiated.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// Character you use to group keys.
  ///
  /// All keys that contain the same string between the prefix, if specified, and the first occurrence of the delimiter after the prefix are grouped under a single result element, `CommonPrefixes`. If you don't specify the prefix parameter, then the substring starts at the beginning of the key. The keys that are grouped under `CommonPrefixes` result element are not returned elsewhere in the response.
  String? get delimiter;

  /// Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
  _i3.EncodingType? get encodingType;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin.
  ///
  /// If `upload-id-marker` is not specified, only the keys lexicographically greater than the specified `key-marker` will be included in the list.
  ///
  /// If `upload-id-marker` is specified, any multipart uploads for a key equal to the `key-marker` might also be included, provided those multipart uploads have upload IDs lexicographically greater than the specified `upload-id-marker`.
  String? get keyMarker;

  /// Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.
  int? get maxUploads;

  /// Lists in-progress uploads only for those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different grouping of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.)
  String? get prefix;

  /// Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads for a key equal to the key-marker might be included in the list only if they have an upload ID lexicographically greater than the specified `upload-id-marker`.
  String? get uploadIdMarker;
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
        expectedBucketOwner,
        keyMarker,
        maxUploads,
        prefix,
        uploadIdMarker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListMultipartUploadsRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'delimiter',
      delimiter,
    );
    helper.add(
      'encodingType',
      encodingType,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'keyMarker',
      keyMarker,
    );
    helper.add(
      'maxUploads',
      maxUploads,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'uploadIdMarker',
      uploadIdMarker,
    );
    return helper.toString();
  }
}

@_i4.internal
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

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListMultipartUploadsRequestPayloadBuilder b) {}
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListMultipartUploadsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
