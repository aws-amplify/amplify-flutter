// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_acl_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_acl_request.g.dart';

abstract class GetBucketAclRequest
    with
        _i1.HttpInput<GetBucketAclRequestPayload>,
        _i2.AWSEquatable<GetBucketAclRequest>
    implements
        Built<GetBucketAclRequest, GetBucketAclRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketAclRequestPayload> {
  factory GetBucketAclRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketAclRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketAclRequest.build(
          [void Function(GetBucketAclRequestBuilder) updates]) =
      _$GetBucketAclRequest;

  const GetBucketAclRequest._();

  factory GetBucketAclRequest.fromRequest(
    GetBucketAclRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketAclRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetBucketAclRequestPayload>>
      serializers = [GetBucketAclRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAclRequestBuilder b) {}

  /// Specifies the S3 bucket whose ACL is being requested.
  ///
  /// To use this API operation against an access point, provide the alias of the access point in place of the bucket name.
  ///
  /// To use this API operation against an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name. If the Object Lambda access point alias in a request is not valid, the error code `InvalidAccessPointAliasError` is returned. For more information about `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).
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
  GetBucketAclRequestPayload getPayload() => GetBucketAclRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketAclRequest')
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
abstract class GetBucketAclRequestPayload
    with _i2.AWSEquatable<GetBucketAclRequestPayload>
    implements
        Built<GetBucketAclRequestPayload, GetBucketAclRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketAclRequestPayload(
          [void Function(GetBucketAclRequestPayloadBuilder) updates]) =
      _$GetBucketAclRequestPayload;

  const GetBucketAclRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAclRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketAclRequestPayload');
    return helper.toString();
  }
}

class GetBucketAclRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketAclRequestPayload> {
  const GetBucketAclRequestRestXmlSerializer() : super('GetBucketAclRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketAclRequest,
        _$GetBucketAclRequest,
        GetBucketAclRequestPayload,
        _$GetBucketAclRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketAclRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketAclRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketAclRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketAclRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
