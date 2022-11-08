// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.documentation_part_ids; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'documentation_part_ids.g.dart';

/// A collection of the imported DocumentationPart identifiers.
abstract class DocumentationPartIds
    with _i1.AWSEquatable<DocumentationPartIds>
    implements Built<DocumentationPartIds, DocumentationPartIdsBuilder> {
  /// A collection of the imported DocumentationPart identifiers.
  factory DocumentationPartIds({
    List<String>? ids,
    List<String>? warnings,
  }) {
    return _$DocumentationPartIds._(
      ids: ids == null ? null : _i2.BuiltList(ids),
      warnings: warnings == null ? null : _i2.BuiltList(warnings),
    );
  }

  /// A collection of the imported DocumentationPart identifiers.
  factory DocumentationPartIds.build(
          [void Function(DocumentationPartIdsBuilder) updates]) =
      _$DocumentationPartIds;

  const DocumentationPartIds._();

  /// Constructs a [DocumentationPartIds] from a [payload] and [response].
  factory DocumentationPartIds.fromResponse(
    DocumentationPartIds payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DocumentationPartIdsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationPartIdsBuilder b) {}

  /// A list of the returned documentation part identifiers.
  _i2.BuiltList<String>? get ids;

  /// A list of warning messages reported during import of documentation parts.
  _i2.BuiltList<String>? get warnings;
  @override
  List<Object?> get props => [
        ids,
        warnings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationPartIds');
    helper.add(
      'ids',
      ids,
    );
    helper.add(
      'warnings',
      warnings,
    );
    return helper.toString();
  }
}

class DocumentationPartIdsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DocumentationPartIds> {
  const DocumentationPartIdsRestJson1Serializer()
      : super('DocumentationPartIds');

  @override
  Iterable<Type> get types => const [
        DocumentationPartIds,
        _$DocumentationPartIds,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentationPartIds deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentationPartIdsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ids':
          if (value != null) {
            result.ids.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'warnings':
          if (value != null) {
            result.warnings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
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
    final payload = (object as DocumentationPartIds);
    final result = <Object?>[];
    if (payload.ids != null) {
      result
        ..add('ids')
        ..add(serializers.serialize(
          payload.ids!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.warnings != null) {
      result
        ..add('warnings')
        ..add(serializers.serialize(
          payload.warnings!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
