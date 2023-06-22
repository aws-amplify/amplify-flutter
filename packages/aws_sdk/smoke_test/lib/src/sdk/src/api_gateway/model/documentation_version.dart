// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? version,
    DateTime? createdDate,
    String? description,
  }) {
    return _$DocumentationVersion._(
      version: version,
      createdDate: createdDate,
      description: description,
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

  static const List<_i2.SmithySerializer<DocumentationVersion>> serializers = [
    DocumentationVersionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationVersionBuilder b) {}

  /// The version identifier of the API documentation snapshot.
  String? get version;

  /// The date when the API documentation snapshot is created.
  DateTime? get createdDate;

  /// The description of the API documentation snapshot.
  String? get description;
  @override
  List<Object?> get props => [
        version,
        createdDate,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationVersion')
      ..add(
        'version',
        version,
      )
      ..add(
        'createdDate',
        createdDate,
      )
      ..add(
        'description',
        description,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'version':
          result.version = (serializers.deserialize(
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
    DocumentationVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DocumentationVersion(:createdDate, :description, :version) = object;
    if (createdDate != null) {
      result$
        ..add('createdDate')
        ..add(serializers.serialize(
          createdDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (version != null) {
      result$
        ..add('version')
        ..add(serializers.serialize(
          version,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
