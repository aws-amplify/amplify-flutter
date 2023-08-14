// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_ownership_controls_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls.dart';
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls_rule.dart';

part 'put_bucket_ownership_controls_request.g.dart';

abstract class PutBucketOwnershipControlsRequest
    with
        _i1.HttpInput<OwnershipControls>,
        _i2.AWSEquatable<PutBucketOwnershipControlsRequest>
    implements
        Built<PutBucketOwnershipControlsRequest,
            PutBucketOwnershipControlsRequestBuilder>,
        _i1.HasPayload<OwnershipControls> {
  factory PutBucketOwnershipControlsRequest({
    required String bucket,
    String? contentMd5,
    String? expectedBucketOwner,
    required OwnershipControls ownershipControls,
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
    OwnershipControls payload,
    _i2.AWSBaseHttpRequest request, {
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

  static const List<_i1.SmithySerializer<OwnershipControls>> serializers = [
    PutBucketOwnershipControlsRequestRestXmlSerializer()
  ];

  /// The name of the Amazon S3 bucket whose `OwnershipControls` you want to set.
  String get bucket;

  /// The MD5 hash of the `OwnershipControls` request body.
  ///
  /// For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
  String? get contentMd5;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The `OwnershipControls` (BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter) that you want to apply to this Amazon S3 bucket.
  OwnershipControls get ownershipControls;
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
  OwnershipControls getPayload() => ownershipControls;
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
        newBuiltValueToStringHelper('PutBucketOwnershipControlsRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'contentMd5',
            contentMd5,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          )
          ..add(
            'ownershipControls',
            ownershipControls,
          );
    return helper.toString();
  }
}

class PutBucketOwnershipControlsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<OwnershipControls> {
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
  OwnershipControls deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipControlsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(OwnershipControlsRule),
          ) as OwnershipControlsRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OwnershipControls object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'OwnershipControls',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final OwnershipControls(:rules) = object;
    result$
        .addAll(const _i1.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      rules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(OwnershipControlsRule)],
      ),
    ));
    return result$;
  }
}
