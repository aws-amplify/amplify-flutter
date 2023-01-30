// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.list_object_versions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i3;

part 'list_object_versions_request.g.dart';

abstract class ListObjectVersionsRequest
    with
        _i1.HttpInput<ListObjectVersionsRequestPayload>,
        _i2.AWSEquatable<ListObjectVersionsRequest>
    implements
        Built<ListObjectVersionsRequest, ListObjectVersionsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListObjectVersionsRequestPayload> {
  factory ListObjectVersionsRequest({
    required String bucket,
    String? delimiter,
    _i3.EncodingType? encodingType,
    String? expectedBucketOwner,
    String? keyMarker,
    int? maxKeys,
    String? prefix,
    String? versionIdMarker,
  }) {
    return _$ListObjectVersionsRequest._(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      expectedBucketOwner: expectedBucketOwner,
      keyMarker: keyMarker,
      maxKeys: maxKeys,
      prefix: prefix,
      versionIdMarker: versionIdMarker,
    );
  }

  factory ListObjectVersionsRequest.build(
          [void Function(ListObjectVersionsRequestBuilder) updates]) =
      _$ListObjectVersionsRequest;

  const ListObjectVersionsRequest._();

  factory ListObjectVersionsRequest.fromRequest(
    ListObjectVersionsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListObjectVersionsRequest.build((b) {
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
        if (request.queryParameters['max-keys'] != null) {
          b.maxKeys = int.parse(request.queryParameters['max-keys']!);
        }
        if (request.queryParameters['prefix'] != null) {
          b.prefix = request.queryParameters['prefix']!;
        }
        if (request.queryParameters['version-id-marker'] != null) {
          b.versionIdMarker = request.queryParameters['version-id-marker']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ListObjectVersionsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectVersionsRequestBuilder b) {}

  /// The bucket name that contains the objects.
  String get bucket;

  /// A delimiter is a character that you specify to group keys. All keys that contain the same string between the `prefix` and the first occurrence of the delimiter are grouped under a single result element in CommonPrefixes. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
  _i3.EncodingType? get encodingType;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Specifies the key to start with when listing objects in a bucket.
  String? get keyMarker;

  /// Sets the maximum number of keys returned in the response. By default the action returns up to 1,000 key names. The response might contain fewer keys but will never contain more. If additional keys satisfy the search criteria, but were not returned because max-keys was exceeded, the response contains true. To return the additional keys, see key-marker and version-id-marker.
  int? get maxKeys;

  /// Use this parameter to select only those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different groupings of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.) You can use prefix with delimiter to roll up numerous objects into a single result under CommonPrefixes.
  String? get prefix;

  /// Specifies the object version you want to start listing from.
  String? get versionIdMarker;
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
  ListObjectVersionsRequestPayload getPayload() =>
      ListObjectVersionsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        delimiter,
        encodingType,
        expectedBucketOwner,
        keyMarker,
        maxKeys,
        prefix,
        versionIdMarker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectVersionsRequest');
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
      'maxKeys',
      maxKeys,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'versionIdMarker',
      versionIdMarker,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class ListObjectVersionsRequestPayload
    with
        _i2.AWSEquatable<ListObjectVersionsRequestPayload>
    implements
        Built<ListObjectVersionsRequestPayload,
            ListObjectVersionsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListObjectVersionsRequestPayload(
          [void Function(ListObjectVersionsRequestPayloadBuilder) updates]) =
      _$ListObjectVersionsRequestPayload;

  const ListObjectVersionsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectVersionsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListObjectVersionsRequestPayload');
    return helper.toString();
  }
}

class ListObjectVersionsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ListObjectVersionsRequestPayload> {
  const ListObjectVersionsRequestRestXmlSerializer()
      : super('ListObjectVersionsRequest');

  @override
  Iterable<Type> get types => const [
        ListObjectVersionsRequest,
        _$ListObjectVersionsRequest,
        ListObjectVersionsRequestPayload,
        _$ListObjectVersionsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectVersionsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListObjectVersionsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListObjectVersionsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
