// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_replication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_replication_request.g.dart';

abstract class GetBucketReplicationRequest
    with
        _i1.HttpInput<GetBucketReplicationRequestPayload>,
        _i2.AWSEquatable<GetBucketReplicationRequest>
    implements
        Built<GetBucketReplicationRequest, GetBucketReplicationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketReplicationRequestPayload> {
  factory GetBucketReplicationRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketReplicationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketReplicationRequest.build(
          [void Function(GetBucketReplicationRequestBuilder) updates]) =
      _$GetBucketReplicationRequest;

  const GetBucketReplicationRequest._();

  factory GetBucketReplicationRequest.fromRequest(
    GetBucketReplicationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketReplicationRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBucketReplicationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketReplicationRequestBuilder b) {}

  /// The bucket name for which to get the replication information.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
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
  GetBucketReplicationRequestPayload getPayload() =>
      GetBucketReplicationRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketReplicationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketReplicationRequestPayload
    with
        _i2.AWSEquatable<GetBucketReplicationRequestPayload>
    implements
        Built<GetBucketReplicationRequestPayload,
            GetBucketReplicationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketReplicationRequestPayload(
          [void Function(GetBucketReplicationRequestPayloadBuilder) updates]) =
      _$GetBucketReplicationRequestPayload;

  const GetBucketReplicationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketReplicationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketReplicationRequestPayload');
    return helper.toString();
  }
}

class GetBucketReplicationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketReplicationRequestPayload> {
  const GetBucketReplicationRequestRestXmlSerializer()
      : super('GetBucketReplicationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketReplicationRequest,
        _$GetBucketReplicationRequest,
        GetBucketReplicationRequestPayload,
        _$GetBucketReplicationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketReplicationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketReplicationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetBucketReplicationRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
