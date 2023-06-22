// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.s3.model.list_objects_v2_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/common_prefix.dart' as _i3;
import 'package:rest_xml_v1/src/s3/model/encoding_type.dart' as _i4;
import 'package:rest_xml_v1/src/s3/model/object.dart' as _i2;
import 'package:smithy/smithy.dart' as _i6;

part 'list_objects_v2_output.g.dart';

abstract class ListObjectsV2Output
    with _i1.AWSEquatable<ListObjectsV2Output>
    implements Built<ListObjectsV2Output, ListObjectsV2OutputBuilder> {
  factory ListObjectsV2Output({
    bool? isTruncated,
    List<_i2.S3Object>? contents,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<_i3.CommonPrefix>? commonPrefixes,
    _i4.EncodingType? encodingType,
    int? keyCount,
    String? continuationToken,
    String? nextContinuationToken,
    String? startAfter,
  }) {
    return _$ListObjectsV2Output._(
      isTruncated: isTruncated,
      contents: contents == null ? null : _i5.BuiltList(contents),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes:
          commonPrefixes == null ? null : _i5.BuiltList(commonPrefixes),
      encodingType: encodingType,
      keyCount: keyCount,
      continuationToken: continuationToken,
      nextContinuationToken: nextContinuationToken,
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

  static const List<_i6.SmithySerializer<ListObjectsV2Output>> serializers = [
    ListObjectsV2OutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsV2OutputBuilder b) {}
  bool? get isTruncated;
  _i5.BuiltList<_i2.S3Object>? get contents;
  String? get name;
  String? get prefix;
  String? get delimiter;
  int? get maxKeys;
  _i5.BuiltList<_i3.CommonPrefix>? get commonPrefixes;
  _i4.EncodingType? get encodingType;
  int? get keyCount;
  String? get continuationToken;
  String? get nextContinuationToken;
  String? get startAfter;
  @override
  List<Object?> get props => [
        isTruncated,
        contents,
        name,
        prefix,
        delimiter,
        maxKeys,
        commonPrefixes,
        encodingType,
        keyCount,
        continuationToken,
        nextContinuationToken,
        startAfter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsV2Output')
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'contents',
        contents,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'delimiter',
        delimiter,
      )
      ..add(
        'maxKeys',
        maxKeys,
      )
      ..add(
        'commonPrefixes',
        commonPrefixes,
      )
      ..add(
        'encodingType',
        encodingType,
      )
      ..add(
        'keyCount',
        keyCount,
      )
      ..add(
        'continuationToken',
        continuationToken,
      )
      ..add(
        'nextContinuationToken',
        nextContinuationToken,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CommonPrefixes':
          result.commonPrefixes.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CommonPrefix),
          ) as _i3.CommonPrefix));
        case 'Contents':
          result.contents.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.S3Object),
          ) as _i2.S3Object));
        case 'ContinuationToken':
          result.continuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.EncodingType),
          ) as _i4.EncodingType);
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'KeyCount':
          result.keyCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxKeys':
          result.maxKeys = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextContinuationToken':
          result.nextContinuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StartAfter':
          result.startAfter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListObjectsV2Output object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'ListObjectsV2Output',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListObjectsV2Output(
      :commonPrefixes,
      :contents,
      :continuationToken,
      :delimiter,
      :encodingType,
      :isTruncated,
      :keyCount,
      :maxKeys,
      :name,
      :nextContinuationToken,
      :prefix,
      :startAfter
    ) = object;
    if (commonPrefixes != null) {
      result$.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        commonPrefixes,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.CommonPrefix)],
        ),
      ));
    }
    if (contents != null) {
      result$.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'Contents').serialize(
        serializers,
        contents,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i2.S3Object)],
        ),
      ));
    }
    if (continuationToken != null) {
      result$
        ..add(const _i6.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          continuationToken,
          specifiedType: const FullType(String),
        ));
    }
    if (delimiter != null) {
      result$
        ..add(const _i6.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          delimiter,
          specifiedType: const FullType(String),
        ));
    }
    if (encodingType != null) {
      result$
        ..add(const _i6.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          encodingType,
          specifiedType: const FullType.nullable(_i4.EncodingType),
        ));
    }
    if (isTruncated != null) {
      result$
        ..add(const _i6.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (keyCount != null) {
      result$
        ..add(const _i6.XmlElementName('KeyCount'))
        ..add(serializers.serialize(
          keyCount,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (maxKeys != null) {
      result$
        ..add(const _i6.XmlElementName('MaxKeys'))
        ..add(serializers.serialize(
          maxKeys,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i6.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (nextContinuationToken != null) {
      result$
        ..add(const _i6.XmlElementName('NextContinuationToken'))
        ..add(serializers.serialize(
          nextContinuationToken,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i6.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (startAfter != null) {
      result$
        ..add(const _i6.XmlElementName('StartAfter'))
        ..add(serializers.serialize(
          startAfter,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
