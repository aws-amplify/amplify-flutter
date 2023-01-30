// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.documentation_versions; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_version.dart'
    as _i2;

part 'documentation_versions.g.dart';

/// The collection of documentation snapshots of an API.
abstract class DocumentationVersions
    with _i1.AWSEquatable<DocumentationVersions>
    implements Built<DocumentationVersions, DocumentationVersionsBuilder> {
  /// The collection of documentation snapshots of an API.
  factory DocumentationVersions({
    List<_i2.DocumentationVersion>? items,
    String? position,
  }) {
    return _$DocumentationVersions._(
      items: items == null ? null : _i3.BuiltList(items),
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

  static const List<_i4.SmithySerializer> serializers = [
    DocumentationVersionsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationVersionsBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.DocumentationVersion>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationVersions');
    helper.add(
      'items',
      items,
    );
    helper.add(
      'position',
      position,
    );
    return helper.toString();
  }
}

class DocumentationVersionsRestJson1Serializer
    extends _i4.StructuredSmithySerializer<DocumentationVersions> {
  const DocumentationVersionsRestJson1Serializer()
      : super('DocumentationVersions');

  @override
  Iterable<Type> get types => const [
        DocumentationVersions,
        _$DocumentationVersions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'item':
          if (value != null) {
            result.items.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.DocumentationVersion)],
              ),
            ) as _i3.BuiltList<_i2.DocumentationVersion>));
          }
          break;
        case 'position':
          if (value != null) {
            result.position = (serializers.deserialize(
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
    final payload = (object as DocumentationVersions);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.DocumentationVersion)],
          ),
        ));
    }
    if (payload.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(
          payload.position!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
