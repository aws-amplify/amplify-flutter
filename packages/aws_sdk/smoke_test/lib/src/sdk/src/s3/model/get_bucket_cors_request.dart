// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_cors_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_cors_request.g.dart';

abstract class GetBucketCorsRequest
    with
        _i1.HttpInput<GetBucketCorsRequestPayload>,
        _i2.AWSEquatable<GetBucketCorsRequest>
    implements
        Built<GetBucketCorsRequest, GetBucketCorsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketCorsRequestPayload> {
  factory GetBucketCorsRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketCorsRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketCorsRequest.build(
          [void Function(GetBucketCorsRequestBuilder) updates]) =
      _$GetBucketCorsRequest;

  const GetBucketCorsRequest._();

  factory GetBucketCorsRequest.fromRequest(
    GetBucketCorsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketCorsRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetBucketCorsRequestPayload>>
      serializers = [GetBucketCorsRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketCorsRequestBuilder b) {}

  /// The bucket name for which to get the cors configuration.
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
  GetBucketCorsRequestPayload getPayload() => GetBucketCorsRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketCorsRequest')
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
abstract class GetBucketCorsRequestPayload
    with _i2.AWSEquatable<GetBucketCorsRequestPayload>
    implements
        Built<GetBucketCorsRequestPayload, GetBucketCorsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketCorsRequestPayload(
          [void Function(GetBucketCorsRequestPayloadBuilder) updates]) =
      _$GetBucketCorsRequestPayload;

  const GetBucketCorsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketCorsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketCorsRequestPayload');
    return helper.toString();
  }
}

class GetBucketCorsRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketCorsRequestPayload> {
  const GetBucketCorsRequestRestXmlSerializer() : super('GetBucketCorsRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketCorsRequest,
        _$GetBucketCorsRequest,
        GetBucketCorsRequestPayload,
        _$GetBucketCorsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketCorsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketCorsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketCorsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketCorsRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
