// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_policy_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_policy_status_request.g.dart';

abstract class GetBucketPolicyStatusRequest
    with
        _i1.HttpInput<GetBucketPolicyStatusRequestPayload>,
        _i2.AWSEquatable<GetBucketPolicyStatusRequest>
    implements
        Built<GetBucketPolicyStatusRequest,
            GetBucketPolicyStatusRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketPolicyStatusRequestPayload> {
  factory GetBucketPolicyStatusRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketPolicyStatusRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketPolicyStatusRequest.build(
          [void Function(GetBucketPolicyStatusRequestBuilder) updates]) =
      _$GetBucketPolicyStatusRequest;

  const GetBucketPolicyStatusRequest._();

  factory GetBucketPolicyStatusRequest.fromRequest(
    GetBucketPolicyStatusRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketPolicyStatusRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetBucketPolicyStatusRequestPayload>>
      serializers = [GetBucketPolicyStatusRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketPolicyStatusRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose policy status you want to retrieve.
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
  GetBucketPolicyStatusRequestPayload getPayload() =>
      GetBucketPolicyStatusRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketPolicyStatusRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketPolicyStatusRequestPayload
    with
        _i2.AWSEquatable<GetBucketPolicyStatusRequestPayload>
    implements
        Built<GetBucketPolicyStatusRequestPayload,
            GetBucketPolicyStatusRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketPolicyStatusRequestPayload(
          [void Function(GetBucketPolicyStatusRequestPayloadBuilder) updates]) =
      _$GetBucketPolicyStatusRequestPayload;

  const GetBucketPolicyStatusRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketPolicyStatusRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketPolicyStatusRequestPayload');
    return helper.toString();
  }
}

class GetBucketPolicyStatusRequestRestXmlSerializer extends _i1
    .StructuredSmithySerializer<GetBucketPolicyStatusRequestPayload> {
  const GetBucketPolicyStatusRequestRestXmlSerializer()
      : super('GetBucketPolicyStatusRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketPolicyStatusRequest,
        _$GetBucketPolicyStatusRequest,
        GetBucketPolicyStatusRequestPayload,
        _$GetBucketPolicyStatusRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketPolicyStatusRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketPolicyStatusRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketPolicyStatusRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketPolicyStatusRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
