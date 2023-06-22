// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library custom_v1.s3.model.get_object_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_object_request.g.dart';

abstract class GetObjectRequest
    with
        _i1.HttpInput<GetObjectRequestPayload>,
        _i2.AWSEquatable<GetObjectRequest>
    implements
        Built<GetObjectRequest, GetObjectRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetObjectRequestPayload> {
  factory GetObjectRequest({
    required String bucket,
    required String key,
    String? range,
  }) {
    return _$GetObjectRequest._(
      bucket: bucket,
      key: key,
      range: range,
    );
  }

  factory GetObjectRequest.build(
      [void Function(GetObjectRequestBuilder) updates]) = _$GetObjectRequest;

  const GetObjectRequest._();

  factory GetObjectRequest.fromRequest(
    GetObjectRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetObjectRequest.build((b) {
        if (request.headers['Range'] != null) {
          b.range = request.headers['Range']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer<GetObjectRequestPayload>> serializers =
      [GetObjectRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectRequestBuilder b) {}
  String get bucket;
  String get key;
  String? get range;
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
  GetObjectRequestPayload getPayload() => GetObjectRequestPayload();
  @override
  List<Object?> get props => [
        bucket,
        key,
        range,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'range',
        range,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetObjectRequestPayload
    with _i2.AWSEquatable<GetObjectRequestPayload>
    implements
        Built<GetObjectRequestPayload, GetObjectRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetObjectRequestPayload(
          [void Function(GetObjectRequestPayloadBuilder) updates]) =
      _$GetObjectRequestPayload;

  const GetObjectRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectRequestPayload');
    return helper.toString();
  }
}

class GetObjectRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetObjectRequestPayload> {
  const GetObjectRequestRestXmlSerializer() : super('GetObjectRequest');

  @override
  Iterable<Type> get types => const [
        GetObjectRequest,
        _$GetObjectRequest,
        GetObjectRequestPayload,
        _$GetObjectRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetObjectRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetObjectRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetObjectRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
