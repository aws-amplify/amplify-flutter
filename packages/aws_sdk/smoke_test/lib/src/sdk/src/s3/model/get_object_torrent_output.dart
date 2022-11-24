// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_torrent_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i4;

part 'get_object_torrent_output.g.dart';

abstract class GetObjectTorrentOutput
    with _i1.AWSEquatable<GetObjectTorrentOutput>
    implements
        Built<GetObjectTorrentOutput, GetObjectTorrentOutputBuilder>,
        _i2.HasPayload<_i3.Stream<List<int>>> {
  factory GetObjectTorrentOutput({
    _i3.Stream<List<int>>? body,
    _i4.RequestCharged? requestCharged,
  }) {
    return _$GetObjectTorrentOutput._(
      body: body,
      requestCharged: requestCharged,
    );
  }

  factory GetObjectTorrentOutput.build(
          [void Function(GetObjectTorrentOutputBuilder) updates]) =
      _$GetObjectTorrentOutput;

  const GetObjectTorrentOutput._();

  /// Constructs a [GetObjectTorrentOutput] from a [payload] and [response].
  factory GetObjectTorrentOutput.fromResponse(
    _i3.Stream<List<int>>? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectTorrentOutput.build((b) {
        b.body = payload;
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i4.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectTorrentOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTorrentOutputBuilder b) {}

  /// A Bencoded dictionary as defined by the BitTorrent specification
  _i3.Stream<List<int>>? get body;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;
  @override
  _i3.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props => [
        body,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectTorrentOutput');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    return helper.toString();
  }
}

class GetObjectTorrentOutputRestXmlSerializer
    extends _i2.PrimitiveSmithySerializer<_i3.Stream<List<int>>> {
  const GetObjectTorrentOutputRestXmlSerializer()
      : super('GetObjectTorrentOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectTorrentOutput,
        _$GetObjectTorrentOutput,
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
    final payload = object is GetObjectTorrentOutput
        ? object.getPayload()
        : (object as _i3.Stream<List<int>>?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetObjectTorrentOutput',
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
