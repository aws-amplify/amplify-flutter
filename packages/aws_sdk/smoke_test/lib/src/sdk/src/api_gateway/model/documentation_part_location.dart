// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.documentation_part_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_type.dart'
    as _i2;

part 'documentation_part_location.g.dart';

/// Specifies the target API entity to which the documentation applies.
abstract class DocumentationPartLocation
    with _i1.AWSEquatable<DocumentationPartLocation>
    implements
        Built<DocumentationPartLocation, DocumentationPartLocationBuilder> {
  /// Specifies the target API entity to which the documentation applies.
  factory DocumentationPartLocation({
    String? method,
    String? name,
    String? path,
    String? statusCode,
    required _i2.DocumentationPartType type,
  }) {
    return _$DocumentationPartLocation._(
      method: method,
      name: name,
      path: path,
      statusCode: statusCode,
      type: type,
    );
  }

  /// Specifies the target API entity to which the documentation applies.
  factory DocumentationPartLocation.build(
          [void Function(DocumentationPartLocationBuilder) updates]) =
      _$DocumentationPartLocation;

  const DocumentationPartLocation._();

  static const List<_i3.SmithySerializer> serializers = [
    DocumentationPartLocationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationPartLocationBuilder b) {}

  /// The HTTP verb of a method. It is a valid field for the API entity types of `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`. The default value is `*` for any method. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other `location` attributes, the child entity's `method` attribute must match that of the parent entity exactly.
  String? get method;

  /// The name of the targeted API entity. It is a valid and required field for the API entity types of `AUTHORIZER`, `MODEL`, `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`, `REQUEST_BODY` and `RESPONSE_HEADER`. It is an invalid field for any other entity type.
  String? get name;

  /// The URL path of the target. It is a valid field for the API entity types of `RESOURCE`, `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`. The default value is `/` for the root resource. When an applicable child entity inherits the content of another entity of the same type with more general specifications of the other `location` attributes, the child entity's `path` attribute must match that of the parent entity as a prefix.
  String? get path;

  /// The HTTP status code of a response. It is a valid field for the API entity types of `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`. The default value is `*` for any status code. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other `location` attributes, the child entity's `statusCode` attribute must match that of the parent entity exactly.
  String? get statusCode;

  /// The type of API entity to which the documentation content applies. Valid values are `API`, `AUTHORIZER`, `MODEL`, `RESOURCE`, `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`. Content inheritance does not apply to any entity of the `API`, `AUTHORIZER`, `METHOD`, `MODEL`, `REQUEST_BODY`, or `RESOURCE` type.
  _i2.DocumentationPartType get type;
  @override
  List<Object?> get props => [
        method,
        name,
        path,
        statusCode,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentationPartLocation');
    helper.add(
      'method',
      method,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'path',
      path,
    );
    helper.add(
      'statusCode',
      statusCode,
    );
    helper.add(
      'type',
      type,
    );
    return helper.toString();
  }
}

class DocumentationPartLocationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DocumentationPartLocation> {
  const DocumentationPartLocationRestJson1Serializer()
      : super('DocumentationPartLocation');

  @override
  Iterable<Type> get types => const [
        DocumentationPartLocation,
        _$DocumentationPartLocation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentationPartLocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentationPartLocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'method':
          if (value != null) {
            result.method = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'path':
          if (value != null) {
            result.path = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'statusCode':
          if (value != null) {
            result.statusCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          result.type = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.DocumentationPartType),
          ) as _i2.DocumentationPartType);
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
    final payload = (object as DocumentationPartLocation);
    final result = <Object?>[
      'type',
      serializers.serialize(
        payload.type,
        specifiedType: const FullType(_i2.DocumentationPartType),
      ),
    ];
    if (payload.method != null) {
      result
        ..add('method')
        ..add(serializers.serialize(
          payload.method!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(
          payload.path!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.statusCode != null) {
      result
        ..add('statusCode')
        ..add(serializers.serialize(
          payload.statusCode!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
