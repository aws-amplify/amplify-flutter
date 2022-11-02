// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_ownership_controls_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls_rule.dart'
    as _i4;

part 'put_bucket_ownership_controls_request.g.dart';

abstract class PutBucketOwnershipControlsRequest
    with
        _i1.HttpInput<_i2.OwnershipControls>,
        _i3.AWSEquatable<PutBucketOwnershipControlsRequest>
    implements
        Built<PutBucketOwnershipControlsRequest,
            PutBucketOwnershipControlsRequestBuilder>,
        _i1.HasPayload<_i2.OwnershipControls> {
  factory PutBucketOwnershipControlsRequest({
    required String bucket,
    String? contentMd5,
    String? expectedBucketOwner,
    required _i2.OwnershipControls ownershipControls,
  }) {
    return _$PutBucketOwnershipControlsRequest._(
      bucket: bucket,
      contentMd5: contentMd5,
      expectedBucketOwner: expectedBucketOwner,
      ownershipControls: ownershipControls,
    );
  }

  factory PutBucketOwnershipControlsRequest.build(
          [void Function(PutBucketOwnershipControlsRequestBuilder) updates]) =
      _$PutBucketOwnershipControlsRequest;

  const PutBucketOwnershipControlsRequest._();

  factory PutBucketOwnershipControlsRequest.fromRequest(
    _i2.OwnershipControls payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketOwnershipControlsRequest.build((b) {
        b.ownershipControls.replace(payload);
        if (request.headers['Content-MD5'] != null) {
          b.contentMd5 = request.headers['Content-MD5']!;
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketOwnershipControlsRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketOwnershipControlsRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose `OwnershipControls` you want to set.
  String get bucket;

  /// The MD5 hash of the `OwnershipControls` request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The `OwnershipControls` (BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter) that you want to apply to this Amazon S3 bucket.
  _i2.OwnershipControls get ownershipControls;
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
  _i2.OwnershipControls getPayload() => ownershipControls;
  @override
  List<Object?> get props => [
        bucket,
        contentMd5,
        expectedBucketOwner,
        ownershipControls,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketOwnershipControlsRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'contentMd5',
      contentMd5,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'ownershipControls',
      ownershipControls,
    );
    return helper.toString();
  }
}

class PutBucketOwnershipControlsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.OwnershipControls> {
  const PutBucketOwnershipControlsRequestRestXmlSerializer()
      : super('PutBucketOwnershipControlsRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketOwnershipControlsRequest,
        _$PutBucketOwnershipControlsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.OwnershipControls deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.OwnershipControlsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.OwnershipControlsRule),
          ) as _i4.OwnershipControlsRule));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is PutBucketOwnershipControlsRequest
        ? object.getPayload()
        : (object as _i2.OwnershipControls);
    final result = <Object?>[
      const _i1.XmlElementName(
        'OwnershipControls',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
        .addAll(const _i1.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i5.BuiltList,
        [FullType(_i4.OwnershipControlsRule)],
      ),
    ));
    return result;
  }
}
