// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library custom_v2.s3.model.copy_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'copy_object_request.g.dart';

abstract class CopyObjectRequest
    with
        _i1.HttpInput<CopyObjectRequestPayload>,
        _i2.AWSEquatable<CopyObjectRequest>
    implements
        Built<CopyObjectRequest, CopyObjectRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<CopyObjectRequestPayload> {
  factory CopyObjectRequest({
    required String bucket,
    required String copySource,
    required String key,
  }) {
    return _$CopyObjectRequest._(
      bucket: bucket,
      copySource: copySource,
      key: key,
    );
  }

  factory CopyObjectRequest.build(
      [void Function(CopyObjectRequestBuilder) updates]) = _$CopyObjectRequest;

  const CopyObjectRequest._();

  factory CopyObjectRequest.fromRequest(
    CopyObjectRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CopyObjectRequest.build((b) {
        if (request.headers['x-amz-copy-source'] != null) {
          b.copySource = request.headers['x-amz-copy-source']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CopyObjectRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyObjectRequestBuilder b) {}
  String get bucket;
  String get copySource;
  String get key;
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
  CopyObjectRequestPayload getPayload() => CopyObjectRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        copySource,
        key,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'copySource',
      copySource,
    );
    helper.add(
      'key',
      key,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class CopyObjectRequestPayload
    with _i2.AWSEquatable<CopyObjectRequestPayload>
    implements
        Built<CopyObjectRequestPayload, CopyObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory CopyObjectRequestPayload(
          [void Function(CopyObjectRequestPayloadBuilder) updates]) =
      _$CopyObjectRequestPayload;

  const CopyObjectRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyObjectRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectRequestPayload');
    return helper.toString();
  }
}

class CopyObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<CopyObjectRequestPayload> {
  const CopyObjectRequestRestXmlSerializer() : super('CopyObjectRequest');

  @override
  Iterable<Type> get types => const [
        CopyObjectRequest,
        _$CopyObjectRequest,
        CopyObjectRequestPayload,
        _$CopyObjectRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CopyObjectRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CopyObjectRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName(
        'CopyObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
