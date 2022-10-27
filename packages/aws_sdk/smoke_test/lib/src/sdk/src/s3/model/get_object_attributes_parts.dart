// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_attributes_parts; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/object_part.dart' as _i2;

part 'get_object_attributes_parts.g.dart';

/// A collection of parts associated with a multipart upload.
abstract class GetObjectAttributesParts
    with _i1.AWSEquatable<GetObjectAttributesParts>
    implements
        Built<GetObjectAttributesParts, GetObjectAttributesPartsBuilder> {
  /// A collection of parts associated with a multipart upload.
  factory GetObjectAttributesParts({
    bool? isTruncated,
    int? maxParts,
    String? nextPartNumberMarker,
    String? partNumberMarker,
    List<_i2.ObjectPart>? parts,
    int? totalPartsCount,
  }) {
    return _$GetObjectAttributesParts._(
      isTruncated: isTruncated,
      maxParts: maxParts,
      nextPartNumberMarker: nextPartNumberMarker,
      partNumberMarker: partNumberMarker,
      parts: parts == null ? null : _i3.BuiltList(parts),
      totalPartsCount: totalPartsCount,
    );
  }

  /// A collection of parts associated with a multipart upload.
  factory GetObjectAttributesParts.build(
          [void Function(GetObjectAttributesPartsBuilder) updates]) =
      _$GetObjectAttributesParts;

  const GetObjectAttributesParts._();

  static const List<_i4.SmithySerializer> serializers = [
    GetObjectAttributesPartsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAttributesPartsBuilder b) {}

  /// Indicates whether the returned list of parts is truncated. A value of `true` indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the `MaxParts` element.
  bool? get isTruncated;

  /// The maximum number of parts allowed in the response.
  int? get maxParts;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the `PartNumberMarker` request parameter in a subsequent request.
  String? get nextPartNumberMarker;

  /// The marker for the current part.
  String? get partNumberMarker;

  /// A container for elements related to a particular part. A response can contain zero or more `Parts` elements.
  _i3.BuiltList<_i2.ObjectPart>? get parts;

  /// The total number of parts.
  int? get totalPartsCount;
  @override
  List<Object?> get props => [
        isTruncated,
        maxParts,
        nextPartNumberMarker,
        partNumberMarker,
        parts,
        totalPartsCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAttributesParts');
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'maxParts',
      maxParts,
    );
    helper.add(
      'nextPartNumberMarker',
      nextPartNumberMarker,
    );
    helper.add(
      'partNumberMarker',
      partNumberMarker,
    );
    helper.add(
      'parts',
      parts,
    );
    helper.add(
      'totalPartsCount',
      totalPartsCount,
    );
    return helper.toString();
  }
}

class GetObjectAttributesPartsRestXmlSerializer
    extends _i4.StructuredSmithySerializer<GetObjectAttributesParts> {
  const GetObjectAttributesPartsRestXmlSerializer()
      : super('GetObjectAttributesParts');

  @override
  Iterable<Type> get types => const [
        GetObjectAttributesParts,
        _$GetObjectAttributesParts,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectAttributesParts deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetObjectAttributesPartsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'MaxParts':
          if (value != null) {
            result.maxParts = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextPartNumberMarker':
          if (value != null) {
            result.nextPartNumberMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PartNumberMarker':
          if (value != null) {
            result.partNumberMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Part':
          if (value != null) {
            result.parts.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ObjectPart),
            ) as _i2.ObjectPart));
          }
          break;
        case 'PartsCount':
          if (value != null) {
            result.totalPartsCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as GetObjectAttributesParts);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetObjectAttributesParts',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.isTruncated != null) {
      result
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.maxParts != null) {
      result
        ..add(const _i4.XmlElementName('MaxParts'))
        ..add(serializers.serialize(
          payload.maxParts!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.nextPartNumberMarker != null) {
      result
        ..add(const _i4.XmlElementName('NextPartNumberMarker'))
        ..add(serializers.serialize(
          payload.nextPartNumberMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.partNumberMarker != null) {
      result
        ..add(const _i4.XmlElementName('PartNumberMarker'))
        ..add(serializers.serialize(
          payload.partNumberMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parts != null) {
      result.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'Part').serialize(
        serializers,
        payload.parts!,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.ObjectPart)],
        ),
      ));
    }
    if (payload.totalPartsCount != null) {
      result
        ..add(const _i4.XmlElementName('PartsCount'))
        ..add(serializers.serialize(
          payload.totalPartsCount!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
