// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.list_objects_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i4;

part 'list_objects_request.g.dart';

abstract class ListObjectsRequest
    with
        _i1.HttpInput<ListObjectsRequestPayload>,
        _i2.AWSEquatable<ListObjectsRequest>
    implements
        Built<ListObjectsRequest, ListObjectsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListObjectsRequestPayload> {
  factory ListObjectsRequest({
    required String bucket,
    String? delimiter,
    _i3.EncodingType? encodingType,
    String? expectedBucketOwner,
    String? marker,
    int? maxKeys,
    String? prefix,
    _i4.RequestPayer? requestPayer,
  }) {
    return _$ListObjectsRequest._(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      expectedBucketOwner: expectedBucketOwner,
      marker: marker,
      maxKeys: maxKeys,
      prefix: prefix,
      requestPayer: requestPayer,
    );
  }

  factory ListObjectsRequest.build(
          [void Function(ListObjectsRequestBuilder) updates]) =
      _$ListObjectsRequest;

  const ListObjectsRequest._();

  factory ListObjectsRequest.fromRequest(
    ListObjectsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListObjectsRequest.build((b) {
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
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
        if (request.queryParameters['marker'] != null) {
          b.marker = request.queryParameters['marker']!;
        }
        if (request.queryParameters['max-keys'] != null) {
          b.maxKeys = int.parse(request.queryParameters['max-keys']!);
        }
        if (request.queryParameters['prefix'] != null) {
          b.prefix = request.queryParameters['prefix']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ListObjectsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsRequestBuilder b) {}

  /// The name of the bucket containing the objects.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String get bucket;

  /// A delimiter is a character you use to group keys.
  String? get delimiter;

  /// Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
  _i3.EncodingType? get encodingType;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Marker is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. Marker can be any key in the bucket.
  String? get marker;

  /// Sets the maximum number of keys returned in the response. By default the action returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
  int? get maxKeys;

  /// Limits the response to keys that begin with the specified prefix.
  String? get prefix;

  /// Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.
  _i4.RequestPayer? get requestPayer;
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
  ListObjectsRequestPayload getPayload() => ListObjectsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        delimiter,
        encodingType,
        expectedBucketOwner,
        marker,
        maxKeys,
        prefix,
        requestPayer,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsRequest');
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
      'marker',
      marker,
    );
    helper.add(
      'maxKeys',
      maxKeys,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'requestPayer',
      requestPayer,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class ListObjectsRequestPayload
    with _i2.AWSEquatable<ListObjectsRequestPayload>
    implements
        Built<ListObjectsRequestPayload, ListObjectsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListObjectsRequestPayload(
          [void Function(ListObjectsRequestPayloadBuilder) updates]) =
      _$ListObjectsRequestPayload;

  const ListObjectsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsRequestPayload');
    return helper.toString();
  }
}

class ListObjectsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ListObjectsRequestPayload> {
  const ListObjectsRequestRestXmlSerializer() : super('ListObjectsRequest');

  @override
  Iterable<Type> get types => const [
        ListObjectsRequest,
        _$ListObjectsRequest,
        ListObjectsRequestPayload,
        _$ListObjectsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListObjectsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListObjectsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
