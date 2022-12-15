// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.s3.model.list_objects_v2_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/common_prefix.dart' as _i2;
import 'package:rest_xml_v1/src/s3/model/encoding_type.dart' as _i4;
import 'package:rest_xml_v1/src/s3/model/object.dart' as _i3;
import 'package:smithy/smithy.dart' as _i6;

part 'list_objects_v2_output.g.dart';

abstract class ListObjectsV2Output
    with _i1.AWSEquatable<ListObjectsV2Output>
    implements Built<ListObjectsV2Output, ListObjectsV2OutputBuilder> {
  factory ListObjectsV2Output({
    List<_i2.CommonPrefix>? commonPrefixes,
    List<_i3.S3Object>? contents,
    String? continuationToken,
    String? delimiter,
    _i4.EncodingType? encodingType,
    bool? isTruncated,
    int? keyCount,
    int? maxKeys,
    String? name,
    String? nextContinuationToken,
    String? prefix,
    String? startAfter,
  }) {
    return _$ListObjectsV2Output._(
      commonPrefixes:
          commonPrefixes == null ? null : _i5.BuiltList(commonPrefixes),
      contents: contents == null ? null : _i5.BuiltList(contents),
      continuationToken: continuationToken,
      delimiter: delimiter,
      encodingType: encodingType,
      isTruncated: isTruncated,
      keyCount: keyCount,
      maxKeys: maxKeys,
      name: name,
      nextContinuationToken: nextContinuationToken,
      prefix: prefix,
      startAfter: startAfter,
    );
  }

  factory ListObjectsV2Output.build(
          [void Function(ListObjectsV2OutputBuilder) updates]) =
      _$ListObjectsV2Output;

  const ListObjectsV2Output._();

  /// Constructs a [ListObjectsV2Output] from a [payload] and [response].
  factory ListObjectsV2Output.fromResponse(
    ListObjectsV2Output payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    ListObjectsV2OutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsV2OutputBuilder b) {}
  _i5.BuiltList<_i2.CommonPrefix>? get commonPrefixes;
  _i5.BuiltList<_i3.S3Object>? get contents;
  String? get continuationToken;
  String? get delimiter;
  _i4.EncodingType? get encodingType;
  bool? get isTruncated;
  int? get keyCount;
  int? get maxKeys;
  String? get name;
  String? get nextContinuationToken;
  String? get prefix;
  String? get startAfter;
  @override
  List<Object?> get props => [
        commonPrefixes,
        contents,
        continuationToken,
        delimiter,
        encodingType,
        isTruncated,
        keyCount,
        maxKeys,
        name,
        nextContinuationToken,
        prefix,
        startAfter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsV2Output');
    helper.add(
      'commonPrefixes',
      commonPrefixes,
    );
    helper.add(
      'contents',
      contents,
    );
    helper.add(
      'continuationToken',
      continuationToken,
    );
    helper.add(
      'delimiter',
      delimiter,
    );
    helper.add(
      'encodingType',
      encodingType,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'keyCount',
      keyCount,
    );
    helper.add(
      'maxKeys',
      maxKeys,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'nextContinuationToken',
      nextContinuationToken,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'startAfter',
      startAfter,
    );
    return helper.toString();
  }
}

class ListObjectsV2OutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<ListObjectsV2Output> {
  const ListObjectsV2OutputRestXmlSerializer() : super('ListObjectsV2Output');

  @override
  Iterable<Type> get types => const [
        ListObjectsV2Output,
        _$ListObjectsV2Output,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectsV2Output deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsV2OutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CommonPrefixes':
          if (value != null) {
            result.commonPrefixes.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CommonPrefix),
            ) as _i2.CommonPrefix));
          }
          break;
        case 'Contents':
          if (value != null) {
            result.contents.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.S3Object),
            ) as _i3.S3Object));
          }
          break;
        case 'ContinuationToken':
          if (value != null) {
            result.continuationToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Delimiter':
          if (value != null) {
            result.delimiter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EncodingType':
          if (value != null) {
            result.encodingType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.EncodingType),
            ) as _i4.EncodingType);
          }
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'KeyCount':
          if (value != null) {
            result.keyCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'MaxKeys':
          if (value != null) {
            result.maxKeys = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NextContinuationToken':
          if (value != null) {
            result.nextContinuationToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StartAfter':
          if (value != null) {
            result.startAfter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as ListObjectsV2Output);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ListObjectsV2Output',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.commonPrefixes != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        payload.commonPrefixes!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i2.CommonPrefix)],
        ),
      ));
    }
    if (payload.contents != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'Contents').serialize(
        serializers,
        payload.contents!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.S3Object)],
        ),
      ));
    }
    if (payload.continuationToken != null) {
      result
        ..add(const _i6.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          payload.continuationToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.delimiter != null) {
      result
        ..add(const _i6.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          payload.delimiter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.encodingType != null) {
      result
        ..add(const _i6.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          payload.encodingType!,
          specifiedType: const FullType.nullable(_i4.EncodingType),
        ));
    }
    if (payload.isTruncated != null) {
      result
        ..add(const _i6.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.keyCount != null) {
      result
        ..add(const _i6.XmlElementName('KeyCount'))
        ..add(serializers.serialize(
          payload.keyCount!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.maxKeys != null) {
      result
        ..add(const _i6.XmlElementName('MaxKeys'))
        ..add(serializers.serialize(
          payload.maxKeys!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i6.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextContinuationToken != null) {
      result
        ..add(const _i6.XmlElementName('NextContinuationToken'))
        ..add(serializers.serialize(
          payload.nextContinuationToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i6.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.startAfter != null) {
      result
        ..add(const _i6.XmlElementName('StartAfter'))
        ..add(serializers.serialize(
          payload.startAfter!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
