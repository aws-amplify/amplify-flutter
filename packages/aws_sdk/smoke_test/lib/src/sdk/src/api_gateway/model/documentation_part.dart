// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.documentation_part; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_location.dart'
    as _i2;

part 'documentation_part.g.dart';

/// A documentation part for a targeted API entity.
abstract class DocumentationPart
    with _i1.AWSEquatable<DocumentationPart>
    implements Built<DocumentationPart, DocumentationPartBuilder> {
  /// A documentation part for a targeted API entity.
  factory DocumentationPart({
    String? id,
    _i2.DocumentationPartLocation? location,
    String? properties,
  }) {
    return _$DocumentationPart._(
      id: id,
      location: location,
      properties: properties,
    );
  }

  /// A documentation part for a targeted API entity.
  factory DocumentationPart.build(
      [void Function(DocumentationPartBuilder) updates]) = _$DocumentationPart;

  const DocumentationPart._();

  /// Constructs a [DocumentationPart] from a [payload] and [response].
  factory DocumentationPart.fromResponse(
    DocumentationPart payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DocumentationPart>> serializers = [
    DocumentationPartRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationPartBuilder b) {}

  /// The DocumentationPart identifier, generated by API Gateway when the `DocumentationPart` is created.
  String? get id;

  /// The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.
  _i2.DocumentationPartLocation? get location;

  /// A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., `"{ \\"description\\": \\"The API does ...\\" }"`. Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of `x-amazon-apigateway-documentation`.
  String? get properties;
  @override
  List<Object?> get props => [
        id,
        location,
        properties,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationPart')
      ..add(
        'id',
        id,
      )
      ..add(
        'location',
        location,
      )
      ..add(
        'properties',
        properties,
      );
    return helper.toString();
  }
}

class DocumentationPartRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DocumentationPart> {
  const DocumentationPartRestJson1Serializer() : super('DocumentationPart');

  @override
  Iterable<Type> get types => const [
        DocumentationPart,
        _$DocumentationPart,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentationPart deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentationPartBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'location':
          result.location.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DocumentationPartLocation),
          ) as _i2.DocumentationPartLocation));
        case 'properties':
          result.properties = (serializers.deserialize(
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
    DocumentationPart object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DocumentationPart(:id, :location, :properties) = object;
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (location != null) {
      result$
        ..add('location')
        ..add(serializers.serialize(
          location,
          specifiedType: const FullType(_i2.DocumentationPartLocation),
        ));
    }
    if (properties != null) {
      result$
        ..add('properties')
        ..add(serializers.serialize(
          properties,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
