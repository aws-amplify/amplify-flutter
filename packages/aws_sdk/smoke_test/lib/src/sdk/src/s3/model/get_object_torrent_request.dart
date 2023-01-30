// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_torrent_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/request_payer.dart' as _i3;

part 'get_object_torrent_request.g.dart';

abstract class GetObjectTorrentRequest
    with
        _i1.HttpInput<GetObjectTorrentRequestPayload>,
        _i2.AWSEquatable<GetObjectTorrentRequest>
    implements
        Built<GetObjectTorrentRequest, GetObjectTorrentRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectTorrentRequestPayload> {
  factory GetObjectTorrentRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String key,
    _i3.RequestPayer? requestPayer,
  }) {
    return _$GetObjectTorrentRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      key: key,
      requestPayer: requestPayer,
    );
  }

  factory GetObjectTorrentRequest.build(
          [void Function(GetObjectTorrentRequestBuilder) updates]) =
      _$GetObjectTorrentRequest;

  const GetObjectTorrentRequest._();

  factory GetObjectTorrentRequest.fromRequest(
    GetObjectTorrentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectTorrentRequest.build((b) {
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i3.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetObjectTorrentRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTorrentRequestBuilder b) {}

  /// The name of the bucket containing the object for which to get the torrent files.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The object key for which to get the information.
  String get key;

  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the _Amazon S3 User Guide_.
  _i3.RequestPayer? get requestPayer;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetObjectTorrentRequestPayload getPayload() =>
      GetObjectTorrentRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        key,
        requestPayer,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectTorrentRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'requestPayer',
      requestPayer,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetObjectTorrentRequestPayload
    with
        _i2.AWSEquatable<GetObjectTorrentRequestPayload>
    implements
        Built<GetObjectTorrentRequestPayload,
            GetObjectTorrentRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectTorrentRequestPayload(
          [void Function(GetObjectTorrentRequestPayloadBuilder) updates]) =
      _$GetObjectTorrentRequestPayload;

  const GetObjectTorrentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTorrentRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectTorrentRequestPayload');
    return helper.toString();
  }
}

class GetObjectTorrentRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectTorrentRequestPayload> {
  const GetObjectTorrentRequestRestXmlSerializer()
      : super('GetObjectTorrentRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectTorrentRequest,
        _$GetObjectTorrentRequest,
        GetObjectTorrentRequestPayload,
        _$GetObjectTorrentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectTorrentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectTorrentRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetObjectTorrentRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
