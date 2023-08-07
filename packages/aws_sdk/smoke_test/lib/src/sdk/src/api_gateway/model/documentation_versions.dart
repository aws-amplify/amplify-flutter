// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.documentation_versions; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_version.dart';

part 'documentation_versions.g.dart';

/// The collection of documentation snapshots of an API.
abstract class DocumentationVersions
    with _i1.AWSEquatable<DocumentationVersions>
    implements Built<DocumentationVersions, DocumentationVersionsBuilder> {
  /// The collection of documentation snapshots of an API.
  factory DocumentationVersions({
    List<DocumentationVersion>? items,
    String? position,
  }) {
    return _$DocumentationVersions._(
      items: items == null ? null : _i2.BuiltList(items),
      position: position,
    );
  }

  /// The collection of documentation snapshots of an API.
  factory DocumentationVersions.build(
          [void Function(DocumentationVersionsBuilder) updates]) =
      _$DocumentationVersions;

  const DocumentationVersions._();

  /// Constructs a [DocumentationVersions] from a [payload] and [response].
  factory DocumentationVersions.fromResponse(
    DocumentationVersions payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DocumentationVersions>> serializers = [
    DocumentationVersionsRestJson1Serializer()
  ];

  /// The current page of elements from this collection.
  _i2.BuiltList<DocumentationVersion>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationVersions')
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

class DocumentationVersionsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DocumentationVersions> {
  const DocumentationVersionsRestJson1Serializer()
      : super('DocumentationVersions');

  @override
  Iterable<Type> get types => const [
        DocumentationVersions,
        _$DocumentationVersions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentationVersions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentationVersionsBuilder();
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
              [FullType(DocumentationVersion)],
            ),
          ) as _i2.BuiltList<DocumentationVersion>));
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
    DocumentationVersions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DocumentationVersions(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DocumentationVersion)],
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
