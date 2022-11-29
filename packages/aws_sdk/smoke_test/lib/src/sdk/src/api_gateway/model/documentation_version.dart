// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.documentation_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'documentation_version.g.dart';

/// A snapshot of the documentation of an API.
abstract class DocumentationVersion
    with _i1.AWSEquatable<DocumentationVersion>
    implements Built<DocumentationVersion, DocumentationVersionBuilder> {
  /// A snapshot of the documentation of an API.
  factory DocumentationVersion({
    DateTime? createdDate,
    String? description,
    String? version,
  }) {
    return _$DocumentationVersion._(
      createdDate: createdDate,
      description: description,
      version: version,
    );
  }

  /// A snapshot of the documentation of an API.
  factory DocumentationVersion.build(
          [void Function(DocumentationVersionBuilder) updates]) =
      _$DocumentationVersion;

  const DocumentationVersion._();

  /// Constructs a [DocumentationVersion] from a [payload] and [response].
  factory DocumentationVersion.fromResponse(
    DocumentationVersion payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DocumentationVersionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationVersionBuilder b) {}

  /// The date when the API documentation snapshot is created.
  DateTime? get createdDate;

  /// The description of the API documentation snapshot.
  String? get description;

  /// The version identifier of the API documentation snapshot.
  String? get version;
  @override
  List<Object?> get props => [
        createdDate,
        description,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationVersion');
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'version',
      version,
    );
    return helper.toString();
  }
}

class DocumentationVersionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<DocumentationVersion> {
  const DocumentationVersionRestJson1Serializer()
      : super('DocumentationVersion');

  @override
  Iterable<Type> get types => const [
        DocumentationVersion,
        _$DocumentationVersion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentationVersion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentationVersionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'version':
          if (value != null) {
            result.version = (serializers.deserialize(
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
    final payload = (object as DocumentationVersion);
    final result = <Object?>[];
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(
          payload.version!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
