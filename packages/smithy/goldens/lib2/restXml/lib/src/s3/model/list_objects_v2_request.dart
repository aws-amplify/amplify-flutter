// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.s3.model.list_objects_v2_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:rest_xml_v2/src/s3/model/encoding_type.dart' as _i3;
import 'package:rest_xml_v2/src/s3/model/request_payer.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'list_objects_v2_request.g.dart';

abstract class ListObjectsV2Request
    with
        _i1.HttpInput<ListObjectsV2RequestPayload>,
        _i2.AWSEquatable<ListObjectsV2Request>
    implements
        Built<ListObjectsV2Request, ListObjectsV2RequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ListObjectsV2RequestPayload> {
  factory ListObjectsV2Request({
    required String bucket,
    String? delimiter,
    _i3.EncodingType? encodingType,
    int? maxKeys,
    String? prefix,
    String? continuationToken,
    bool? fetchOwner,
    String? startAfter,
    _i4.RequestPayer? requestPayer,
    String? expectedBucketOwner,
  }) {
    return _$ListObjectsV2Request._(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      maxKeys: maxKeys,
      prefix: prefix,
      continuationToken: continuationToken,
      fetchOwner: fetchOwner,
      startAfter: startAfter,
      requestPayer: requestPayer,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory ListObjectsV2Request.build(
          [void Function(ListObjectsV2RequestBuilder) updates]) =
      _$ListObjectsV2Request;

  const ListObjectsV2Request._();

  factory ListObjectsV2Request.fromRequest(
    ListObjectsV2RequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ListObjectsV2Request.build((b) {
        if (request.headers['x-amz-request-payer'] != null) {
          b.requestPayer = _i4.RequestPayer.values
              .byValue(request.headers['x-amz-request-payer']!);
        }
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
        if (request.queryParameters['max-keys'] != null) {
          b.maxKeys = int.parse(request.queryParameters['max-keys']!);
        }
        if (request.queryParameters['prefix'] != null) {
          b.prefix = request.queryParameters['prefix']!;
        }
        if (request.queryParameters['continuation-token'] != null) {
          b.continuationToken = request.queryParameters['continuation-token']!;
        }
        if (request.queryParameters['fetch-owner'] != null) {
          b.fetchOwner = request.queryParameters['fetch-owner']! == 'true';
        }
        if (request.queryParameters['start-after'] != null) {
          b.startAfter = request.queryParameters['start-after']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<ListObjectsV2RequestPayload>>
      serializers = [ListObjectsV2RequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsV2RequestBuilder b) {}
  String get bucket;
  String? get delimiter;
  _i3.EncodingType? get encodingType;
  int? get maxKeys;
  String? get prefix;
  String? get continuationToken;
  bool? get fetchOwner;
  String? get startAfter;
  _i4.RequestPayer? get requestPayer;
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
  ListObjectsV2RequestPayload getPayload() => ListObjectsV2RequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        delimiter,
        encodingType,
        maxKeys,
        prefix,
        continuationToken,
        fetchOwner,
        startAfter,
        requestPayer,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsV2Request')
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
        'maxKeys',
        maxKeys,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'continuationToken',
        continuationToken,
      )
      ..add(
        'fetchOwner',
        fetchOwner,
      )
      ..add(
        'startAfter',
        startAfter,
      )
      ..add(
        'requestPayer',
        requestPayer,
      )
      ..add(
        'expectedBucketOwner',
        expectedBucketOwner,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class ListObjectsV2RequestPayload
    with _i2.AWSEquatable<ListObjectsV2RequestPayload>
    implements
        Built<ListObjectsV2RequestPayload, ListObjectsV2RequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory ListObjectsV2RequestPayload(
          [void Function(ListObjectsV2RequestPayloadBuilder) updates]) =
      _$ListObjectsV2RequestPayload;

  const ListObjectsV2RequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsV2RequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsV2RequestPayload');
    return helper.toString();
  }
}

class ListObjectsV2RequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ListObjectsV2RequestPayload> {
  const ListObjectsV2RequestRestXmlSerializer() : super('ListObjectsV2Request');

  @override
  Iterable<Type> get types => const [
        ListObjectsV2Request,
        _$ListObjectsV2Request,
        ListObjectsV2RequestPayload,
        _$ListObjectsV2RequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectsV2RequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListObjectsV2RequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListObjectsV2RequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListObjectsV2Request',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
