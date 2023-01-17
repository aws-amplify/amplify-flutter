// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.resource; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method.dart' as _i2;

part 'resource.g.dart';

/// Represents an API resource.
abstract class Resource
    with _i1.AWSEquatable<Resource>
    implements Built<Resource, ResourceBuilder> {
  /// Represents an API resource.
  factory Resource({
    String? id,
    String? parentId,
    String? path,
    String? pathPart,
    Map<String, _i2.Method>? resourceMethods,
  }) {
    return _$Resource._(
      id: id,
      parentId: parentId,
      path: path,
      pathPart: pathPart,
      resourceMethods:
          resourceMethods == null ? null : _i3.BuiltMap(resourceMethods),
    );
  }

  /// Represents an API resource.
  factory Resource.build([void Function(ResourceBuilder) updates]) = _$Resource;

  const Resource._();

  /// Constructs a [Resource] from a [payload] and [response].
  factory Resource.fromResponse(
    Resource payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ResourceRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceBuilder b) {}

  /// The resource's identifier.
  String? get id;

  /// The parent resource's identifier.
  String? get parentId;

  /// The full path for this resource.
  String? get path;

  /// The last path segment for this resource.
  String? get pathPart;

  /// Gets an API resource's method of a given HTTP verb.
  _i3.BuiltMap<String, _i2.Method>? get resourceMethods;
  @override
  List<Object?> get props => [
        id,
        parentId,
        path,
        pathPart,
        resourceMethods,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Resource');
    helper.add(
      'id',
      id,
    );
    helper.add(
      'parentId',
      parentId,
    );
    helper.add(
      'path',
      path,
    );
    helper.add(
      'pathPart',
      pathPart,
    );
    helper.add(
      'resourceMethods',
      resourceMethods,
    );
    return helper.toString();
  }
}

class ResourceRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Resource> {
  const ResourceRestJson1Serializer() : super('Resource');

  @override
  Iterable<Type> get types => const [
        Resource,
        _$Resource,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Resource deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'parentId':
          if (value != null) {
            result.parentId = (serializers.deserialize(
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
        case 'pathPart':
          if (value != null) {
            result.pathPart = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceMethods':
          if (value != null) {
            result.resourceMethods.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.Method),
                ],
              ),
            ) as _i3.BuiltMap<String, _i2.Method>));
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
    final payload = (object as Resource);
    final result = <Object?>[];
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parentId != null) {
      result
        ..add('parentId')
        ..add(serializers.serialize(
          payload.parentId!,
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
    if (payload.pathPart != null) {
      result
        ..add('pathPart')
        ..add(serializers.serialize(
          payload.pathPart!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceMethods != null) {
      result
        ..add('resourceMethods')
        ..add(serializers.serialize(
          payload.resourceMethods!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.Method),
            ],
          ),
        ));
    }
    return result;
  }
}
