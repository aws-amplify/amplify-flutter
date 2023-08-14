// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.documentation_parts; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part.dart';

part 'documentation_parts.g.dart';

/// The collection of documentation parts of an API.
abstract class DocumentationParts
    with _i1.AWSEquatable<DocumentationParts>
    implements Built<DocumentationParts, DocumentationPartsBuilder> {
  /// The collection of documentation parts of an API.
  factory DocumentationParts({
    List<DocumentationPart>? items,
    String? position,
  }) {
    return _$DocumentationParts._(
      items: items == null ? null : _i2.BuiltList(items),
      position: position,
    );
  }

  /// The collection of documentation parts of an API.
  factory DocumentationParts.build(
          [void Function(DocumentationPartsBuilder) updates]) =
      _$DocumentationParts;

  const DocumentationParts._();

  /// Constructs a [DocumentationParts] from a [payload] and [response].
  factory DocumentationParts.fromResponse(
    DocumentationParts payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DocumentationParts>> serializers = [
    DocumentationPartsRestJson1Serializer()
  ];

  /// The current page of elements from this collection.
  _i2.BuiltList<DocumentationPart>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationParts')
      ..add(
        'items',
        items,
      )
      ..add(
        'position',
        position,
      );
    return helper.toString();
  }
}

class DocumentationPartsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DocumentationParts> {
  const DocumentationPartsRestJson1Serializer() : super('DocumentationParts');

  @override
  Iterable<Type> get types => const [
        DocumentationParts,
        _$DocumentationParts,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentationParts deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentationPartsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'item':
          result.items.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DocumentationPart)],
            ),
          ) as _i2.BuiltList<DocumentationPart>));
        case 'position':
          result.position = (serializers.deserialize(
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
    DocumentationParts object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DocumentationParts(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DocumentationPart)],
          ),
        ));
    }
    if (position != null) {
      result$
        ..add('position')
        ..add(serializers.serialize(
          position,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
