// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library custom_v2.s3.model.get_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_object_output.g.dart';

abstract class GetObjectOutput
    with _i1.AWSEquatable<GetObjectOutput>
    implements
        Built<GetObjectOutput, GetObjectOutputBuilder>,
        _i2.HasPayload<_i3.Stream<List<int>>> {
  factory GetObjectOutput({
    _i3.Stream<List<int>>? body,
    int? contentLength,
    String? contentRange,
  }) {
    body ??= const _i3.Stream.empty();
    return _$GetObjectOutput._(
      body: body,
      contentLength: contentLength,
      contentRange: contentRange,
    );
  }

  factory GetObjectOutput.build(
      [void Function(GetObjectOutputBuilder) updates]) = _$GetObjectOutput;

  const GetObjectOutput._();

  /// Constructs a [GetObjectOutput] from a [payload] and [response].
  factory GetObjectOutput.fromResponse(
    _i3.Stream<List<int>>? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectOutput.build((b) {
        b.body = payload;
        if (response.headers['Content-Length'] != null) {
          b.contentLength = int.parse(response.headers['Content-Length']!);
        }
        if (response.headers['Content-Range'] != null) {
          b.contentRange = response.headers['Content-Range']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectOutputBuilder b) {
    b.body = const _i3.Stream.empty();
  }

  _i3.Stream<List<int>>? get body;
  int? get contentLength;
  String? get contentRange;
  @override
  _i3.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props => [
        body,
        contentLength,
        contentRange,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectOutput');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'contentLength',
      contentLength,
    );
    helper.add(
      'contentRange',
      contentRange,
    );
    return helper.toString();
  }
}

class GetObjectOutputRestXmlSerializer
    extends _i2.PrimitiveSmithySerializer<_i3.Stream<List<int>>> {
  const GetObjectOutputRestXmlSerializer() : super('GetObjectOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectOutput,
        _$GetObjectOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(
        _i3.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as _i3.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is GetObjectOutput
        ? object.getPayload()
        : (object as _i3.Stream<List<int>>?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetObjectOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    result.add(serializers.serialize(
      payload,
      specifiedType: const FullType(
        _i3.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ));
    return result;
  }
}
