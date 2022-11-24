// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.null_and_empty_headers_io; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'null_and_empty_headers_io.g.dart';

abstract class NullAndEmptyHeadersIo
    with
        _i1.HttpInput<NullAndEmptyHeadersIoPayload>,
        _i2.AWSEquatable<NullAndEmptyHeadersIo>
    implements
        Built<NullAndEmptyHeadersIo, NullAndEmptyHeadersIoBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<NullAndEmptyHeadersIoPayload> {
  factory NullAndEmptyHeadersIo({
    String? a,
    String? b,
    List<String>? c,
  }) {
    return _$NullAndEmptyHeadersIo._(
      a: a,
      b: b,
      c: c == null ? null : _i3.BuiltList(c),
    );
  }

  factory NullAndEmptyHeadersIo.build(
          [void Function(NullAndEmptyHeadersIoBuilder) updates]) =
      _$NullAndEmptyHeadersIo;

  const NullAndEmptyHeadersIo._();

  factory NullAndEmptyHeadersIo.fromRequest(
    NullAndEmptyHeadersIoPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      NullAndEmptyHeadersIo.build((b) {
        if (request.headers['X-A'] != null) {
          b.a = request.headers['X-A']!;
        }
        if (request.headers['X-B'] != null) {
          b.b = request.headers['X-B']!;
        }
        if (request.headers['X-C'] != null) {
          b.c.addAll(
              _i1.parseHeader(request.headers['X-C']!).map((el) => el.trim()));
        }
      });

  /// Constructs a [NullAndEmptyHeadersIo] from a [payload] and [response].
  factory NullAndEmptyHeadersIo.fromResponse(
    NullAndEmptyHeadersIoPayload payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      NullAndEmptyHeadersIo.build((b) {
        if (response.headers['X-A'] != null) {
          b.a = response.headers['X-A']!;
        }
        if (response.headers['X-B'] != null) {
          b.b = response.headers['X-B']!;
        }
        if (response.headers['X-C'] != null) {
          b.c.addAll(
              _i1.parseHeader(response.headers['X-C']!).map((el) => el.trim()));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    NullAndEmptyHeadersIoRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NullAndEmptyHeadersIoBuilder b) {}
  String? get a;
  String? get b;
  _i3.BuiltList<String>? get c;
  @override
  NullAndEmptyHeadersIoPayload getPayload() => NullAndEmptyHeadersIoPayload();
  @override
  List<Object?> get props => [
        a,
        b,
        c,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NullAndEmptyHeadersIo');
    helper.add(
      'a',
      a,
    );
    helper.add(
      'b',
      b,
    );
    helper.add(
      'c',
      c,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class NullAndEmptyHeadersIoPayload
    with
        _i2.AWSEquatable<NullAndEmptyHeadersIoPayload>
    implements
        Built<NullAndEmptyHeadersIoPayload,
            NullAndEmptyHeadersIoPayloadBuilder>,
        _i1.EmptyPayload {
  factory NullAndEmptyHeadersIoPayload(
          [void Function(NullAndEmptyHeadersIoPayloadBuilder) updates]) =
      _$NullAndEmptyHeadersIoPayload;

  const NullAndEmptyHeadersIoPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NullAndEmptyHeadersIoPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NullAndEmptyHeadersIoPayload');
    return helper.toString();
  }
}

class NullAndEmptyHeadersIoRestXmlSerializer
    extends _i1.StructuredSmithySerializer<NullAndEmptyHeadersIoPayload> {
  const NullAndEmptyHeadersIoRestXmlSerializer()
      : super('NullAndEmptyHeadersIo');

  @override
  Iterable<Type> get types => const [
        NullAndEmptyHeadersIo,
        _$NullAndEmptyHeadersIo,
        NullAndEmptyHeadersIoPayload,
        _$NullAndEmptyHeadersIoPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NullAndEmptyHeadersIoPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NullAndEmptyHeadersIoPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[const _i1.XmlElementName('NullAndEmptyHeadersIo')];
    return result;
  }
}
