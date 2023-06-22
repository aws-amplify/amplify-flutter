// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_logging_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_logging_request.g.dart';

abstract class GetBucketLoggingRequest
    with
        _i1.HttpInput<GetBucketLoggingRequestPayload>,
        _i2.AWSEquatable<GetBucketLoggingRequest>
    implements
        Built<GetBucketLoggingRequest, GetBucketLoggingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketLoggingRequestPayload> {
  factory GetBucketLoggingRequest({
    required String bucket,
    String? expectedBucketOwner,
  }) {
    return _$GetBucketLoggingRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory GetBucketLoggingRequest.build(
          [void Function(GetBucketLoggingRequestBuilder) updates]) =
      _$GetBucketLoggingRequest;

  const GetBucketLoggingRequest._();

  factory GetBucketLoggingRequest.fromRequest(
    GetBucketLoggingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBucketLoggingRequest.build((b) {
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<GetBucketLoggingRequestPayload>>
      serializers = [GetBucketLoggingRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLoggingRequestBuilder b) {}

  /// The bucket name for which to get the logging information.
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
  GetBucketLoggingRequestPayload getPayload() =>
      GetBucketLoggingRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketLoggingRequest')
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
abstract class GetBucketLoggingRequestPayload
    with
        _i2.AWSEquatable<GetBucketLoggingRequestPayload>
    implements
        Built<GetBucketLoggingRequestPayload,
            GetBucketLoggingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketLoggingRequestPayload(
          [void Function(GetBucketLoggingRequestPayloadBuilder) updates]) =
      _$GetBucketLoggingRequestPayload;

  const GetBucketLoggingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLoggingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketLoggingRequestPayload');
    return helper.toString();
  }
}

class GetBucketLoggingRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketLoggingRequestPayload> {
  const GetBucketLoggingRequestRestXmlSerializer()
      : super('GetBucketLoggingRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketLoggingRequest,
        _$GetBucketLoggingRequest,
        GetBucketLoggingRequestPayload,
        _$GetBucketLoggingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketLoggingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBucketLoggingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketLoggingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetBucketLoggingRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
