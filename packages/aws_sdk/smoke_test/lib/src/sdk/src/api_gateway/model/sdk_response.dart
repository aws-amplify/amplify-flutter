// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.sdk_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'sdk_response.g.dart';

/// The binary blob response to GetSdk, which contains the generated SDK.
abstract class SdkResponse
    with _i1.AWSEquatable<SdkResponse>
    implements
        Built<SdkResponse, SdkResponseBuilder>,
        _i2.HasPayload<_i3.Uint8List> {
  /// The binary blob response to GetSdk, which contains the generated SDK.
  factory SdkResponse({
    _i3.Uint8List? body,
    String? contentDisposition,
    String? contentType,
  }) {
    return _$SdkResponse._(
      body: body,
      contentDisposition: contentDisposition,
      contentType: contentType,
    );
  }

  /// The binary blob response to GetSdk, which contains the generated SDK.
  factory SdkResponse.build([void Function(SdkResponseBuilder) updates]) =
      _$SdkResponse;

  const SdkResponse._();

  /// Constructs a [SdkResponse] from a [payload] and [response].
  factory SdkResponse.fromResponse(
    _i3.Uint8List? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      SdkResponse.build((b) {
        b.body = payload;
        if (response.headers['Content-Type'] != null) {
          b.contentType = response.headers['Content-Type']!;
        }
        if (response.headers['Content-Disposition'] != null) {
          b.contentDisposition = response.headers['Content-Disposition']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    SdkResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SdkResponseBuilder b) {}

  /// The binary blob response to GetSdk, which contains the generated SDK.
  _i3.Uint8List? get body;

  /// The content-disposition header value in the HTTP response.
  String? get contentDisposition;

  /// The content-type header value in the HTTP response.
  String? get contentType;
  @override
  _i3.Uint8List? getPayload() => body;
  @override
  List<Object?> get props => [
        body,
        contentDisposition,
        contentType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SdkResponse');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'contentDisposition',
      contentDisposition,
    );
    helper.add(
      'contentType',
      contentType,
    );
    return helper.toString();
  }
}

class SdkResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.Uint8List> {
  const SdkResponseRestJson1Serializer() : super('SdkResponse');

  @override
  Iterable<Type> get types => const [
        SdkResponse,
        _$SdkResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.Uint8List),
    ) as _i3.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is SdkResponse
        ? object.getPayload()
        : (object as _i3.Uint8List?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i3.Uint8List),
    ) as Object);
  }
}
