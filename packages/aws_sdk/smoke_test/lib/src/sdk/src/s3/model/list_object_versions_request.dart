// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.list_object_versions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/optional_object_attributes.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart';

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
    EncodingType? encodingType,
    String? keyMarker,
    int? maxKeys,
    String? prefix,
    String? versionIdMarker,
    String? expectedBucketOwner,
    RequestPayer? requestPayer,
    List<OptionalObjectAttributes>? optionalObjectAttributes,
  }) {
    return _$ListObjectVersionsRequest._(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      keyMarker: keyMarker,
      maxKeys: maxKeys,
      prefix: prefix,
      versionIdMarker: versionIdMarker,
      expectedBucketOwner: expectedBucketOwner,
      requestPayer: requestPayer,
      optionalObjectAttributes: optionalObjectAttributes == null
          ? null
          : _i3.BuiltList(optionalObjectAttributes),
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
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-optional-object-attributes'] != null) {
          b.optionalObjectAttributes.addAll(_i1
              .parseHeader(request.headers['x-amz-optional-object-attributes']!)
              .map((el) => OptionalObjectAttributes.values.byValue(el.trim())));
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

  static const List<_i1.SmithySerializer<ListObjectVersionsRequestPayload>>
      serializers = [ListObjectVersionsRequestRestXmlSerializer()];

  /// The bucket name that contains the objects.
  String get bucket;

  /// A delimiter is a character that you specify to group keys. All keys that contain the same string between the `prefix` and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the `max-keys` limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key can contain any Unicode character; however, the XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
  EncodingType? get encodingType;

  /// Specifies the key to start with when listing objects in a bucket.
  String? get keyMarker;

  /// Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000 key names. The response might contain fewer keys but will never contain more. If additional keys satisfy the search criteria, but were not returned because `max-keys` was exceeded, the response contains `true`. To return the additional keys, see `key-marker` and `version-id-marker`.
  int? get maxKeys;

  /// Use this parameter to select only those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different groupings of keys. (You can think of using `prefix` to make groups in the same way that you'd use a folder in a file system.) You can use `prefix` with `delimiter` to roll up numerous objects into a single result under `CommonPrefixes`.
  String? get prefix;

  /// Specifies the object version you want to start listing from.
  String? get versionIdMarker;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  RequestPayer? get requestPayer;

  /// Specifies the optional fields that you want returned in the response. Fields that you do not specify are not returned.
  _i3.BuiltList<OptionalObjectAttributes>? get optionalObjectAttributes;
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
        keyMarker,
        maxKeys,
        prefix,
        versionIdMarker,
        expectedBucketOwner,
        requestPayer,
        optionalObjectAttributes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectVersionsRequest')
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
        'maxKeys',
        maxKeys,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'versionIdMarker',
        versionIdMarker,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      )
      ..add(
        'requestPayer',
        requestPayer,
      )
      ..add(
        'optionalObjectAttributes',
        optionalObjectAttributes,
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
    ListObjectVersionsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListObjectVersionsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
