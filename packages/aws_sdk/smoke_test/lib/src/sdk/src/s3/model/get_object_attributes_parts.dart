// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_object_attributes_parts; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_part.dart';

part 'get_object_attributes_parts.g.dart';

/// A collection of parts associated with a multipart upload.
abstract class GetObjectAttributesParts
    with _i1.AWSEquatable<GetObjectAttributesParts>
    implements
        Built<GetObjectAttributesParts, GetObjectAttributesPartsBuilder> {
  /// A collection of parts associated with a multipart upload.
  factory GetObjectAttributesParts({
    int? totalPartsCount,
    String? partNumberMarker,
    String? nextPartNumberMarker,
    int? maxParts,
    bool? isTruncated,
    List<ObjectPart>? parts,
  }) {
    return _$GetObjectAttributesParts._(
      totalPartsCount: totalPartsCount,
      partNumberMarker: partNumberMarker,
      nextPartNumberMarker: nextPartNumberMarker,
      maxParts: maxParts,
      isTruncated: isTruncated,
      parts: parts == null ? null : _i2.BuiltList(parts),
    );
  }

  /// A collection of parts associated with a multipart upload.
  factory GetObjectAttributesParts.build(
          [void Function(GetObjectAttributesPartsBuilder) updates]) =
      _$GetObjectAttributesParts;

  const GetObjectAttributesParts._();

  static const List<_i3.SmithySerializer<GetObjectAttributesParts>>
      serializers = [GetObjectAttributesPartsRestXmlSerializer()];

  /// The total number of parts.
  int? get totalPartsCount;

  /// The marker for the current part.
  String? get partNumberMarker;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the `PartNumberMarker` request parameter in a subsequent request.
  String? get nextPartNumberMarker;

  /// The maximum number of parts allowed in the response.
  int? get maxParts;

  /// Indicates whether the returned list of parts is truncated. A value of `true` indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the `MaxParts` element.
  bool? get isTruncated;

  /// A container for elements related to a particular part. A response can contain zero or more `Parts` elements.
  _i2.BuiltList<ObjectPart>? get parts;
  @override
  List<Object?> get props => [
        totalPartsCount,
        partNumberMarker,
        nextPartNumberMarker,
        maxParts,
        isTruncated,
        parts,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAttributesParts')
      ..add(
        'totalPartsCount',
        totalPartsCount,
      )
      ..add(
        'partNumberMarker',
        partNumberMarker,
      )
      ..add(
        'nextPartNumberMarker',
        nextPartNumberMarker,
      )
      ..add(
        'maxParts',
        maxParts,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'parts',
        parts,
      );
    return helper.toString();
  }
}

class GetObjectAttributesPartsRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GetObjectAttributesParts> {
  const GetObjectAttributesPartsRestXmlSerializer()
      : super('GetObjectAttributesParts');

  @override
  Iterable<Type> get types => const [
        GetObjectAttributesParts,
        _$GetObjectAttributesParts,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'MaxParts':
          result.maxParts = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextPartNumberMarker':
          result.nextPartNumberMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PartNumberMarker':
          result.partNumberMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Part':
          result.parts.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectPart),
          ) as ObjectPart));
        case 'PartsCount':
          result.totalPartsCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetObjectAttributesParts object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetObjectAttributesParts',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetObjectAttributesParts(
      :isTruncated,
      :maxParts,
      :nextPartNumberMarker,
      :partNumberMarker,
      :parts,
      :totalPartsCount
    ) = object;
    if (isTruncated != null) {
      result$
        ..add(const _i3.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType(bool),
        ));
    }
    if (maxParts != null) {
      result$
        ..add(const _i3.XmlElementName('MaxParts'))
        ..add(serializers.serialize(
          maxParts,
          specifiedType: const FullType(int),
        ));
    }
    if (nextPartNumberMarker != null) {
      result$
        ..add(const _i3.XmlElementName('NextPartNumberMarker'))
        ..add(serializers.serialize(
          nextPartNumberMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (partNumberMarker != null) {
      result$
        ..add(const _i3.XmlElementName('PartNumberMarker'))
        ..add(serializers.serialize(
          partNumberMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (parts != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'Part').serialize(
        serializers,
        parts,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(ObjectPart)],
        ),
      ));
    }
    if (totalPartsCount != null) {
      result$
        ..add(const _i3.XmlElementName('PartsCount'))
        ..add(serializers.serialize(
          totalPartsCount,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
