// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_tagging_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i3;

part 'get_object_tagging_output.g.dart';

abstract class GetObjectTaggingOutput
    with _i1.AWSEquatable<GetObjectTaggingOutput>
    implements
        Built<GetObjectTaggingOutput, GetObjectTaggingOutputBuilder>,
        _i2.HasPayload<GetObjectTaggingOutputPayload> {
  factory GetObjectTaggingOutput({
    required List<_i3.Tag> tagSet,
    String? versionId,
  }) {
    return _$GetObjectTaggingOutput._(
      tagSet: _i4.BuiltList(tagSet),
      versionId: versionId,
    );
  }

  factory GetObjectTaggingOutput.build(
          [void Function(GetObjectTaggingOutputBuilder) updates]) =
      _$GetObjectTaggingOutput;

  const GetObjectTaggingOutput._();

  /// Constructs a [GetObjectTaggingOutput] from a [payload] and [response].
  factory GetObjectTaggingOutput.fromResponse(
    GetObjectTaggingOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectTaggingOutput.build((b) {
        b.tagSet.replace(payload.tagSet);
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectTaggingOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTaggingOutputBuilder b) {}

  /// Contains the tag set.
  _i4.BuiltList<_i3.Tag> get tagSet;

  /// The versionId of the object for which you got the tagging information.
  String? get versionId;
  @override
  GetObjectTaggingOutputPayload getPayload() =>
      GetObjectTaggingOutputPayload((b) {
        b.tagSet.replace(tagSet);
      });
  @override
  List<Object?> get props => [
        tagSet,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectTaggingOutput');
    helper.add(
      'tagSet',
      tagSet,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class GetObjectTaggingOutputPayload
    with
        _i1.AWSEquatable<GetObjectTaggingOutputPayload>
    implements
        Built<GetObjectTaggingOutputPayload,
            GetObjectTaggingOutputPayloadBuilder> {
  factory GetObjectTaggingOutputPayload(
          [void Function(GetObjectTaggingOutputPayloadBuilder) updates]) =
      _$GetObjectTaggingOutputPayload;

  const GetObjectTaggingOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectTaggingOutputPayloadBuilder b) {}

  /// Contains the tag set.
  _i4.BuiltList<_i3.Tag> get tagSet;
  @override
  List<Object?> get props => [tagSet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectTaggingOutputPayload');
    helper.add(
      'tagSet',
      tagSet,
    );
    return helper.toString();
  }
}

class GetObjectTaggingOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GetObjectTaggingOutputPayload> {
  const GetObjectTaggingOutputRestXmlSerializer()
      : super('GetObjectTaggingOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectTaggingOutput,
        _$GetObjectTaggingOutput,
        GetObjectTaggingOutputPayload,
        _$GetObjectTaggingOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectTaggingOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetObjectTaggingOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TagSet':
          result.tagSet.replace(
              (const _i2.XmlBuiltListSerializer(memberName: 'Tag').deserialize(
            serializers,
            (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is GetObjectTaggingOutput
        ? object.getPayload()
        : (object as GetObjectTaggingOutputPayload);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Tagging',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('TagSet'))
      ..add(const _i2.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        payload.tagSet,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ));
    return result;
  }
}
