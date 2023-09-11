// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.resource_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'resource_statement.g.dart';

/// Describes a resource statement.
abstract class ResourceStatement
    with _i1.AWSEquatable<ResourceStatement>
    implements Built<ResourceStatement, ResourceStatementBuilder> {
  /// Describes a resource statement.
  factory ResourceStatement({
    List<String>? resources,
    List<String>? resourceTypes,
  }) {
    return _$ResourceStatement._(
      resources: resources == null ? null : _i2.BuiltList(resources),
      resourceTypes:
          resourceTypes == null ? null : _i2.BuiltList(resourceTypes),
    );
  }

  /// Describes a resource statement.
  factory ResourceStatement.build(
      [void Function(ResourceStatementBuilder) updates]) = _$ResourceStatement;

  const ResourceStatement._();

  static const List<_i3.SmithySerializer<ResourceStatement>> serializers = [
    ResourceStatementEc2QuerySerializer()
  ];

  /// The resources.
  _i2.BuiltList<String>? get resources;

  /// The resource types.
  _i2.BuiltList<String>? get resourceTypes;
  @override
  List<Object?> get props => [
        resources,
        resourceTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceStatement')
      ..add(
        'resources',
        resources,
      )
      ..add(
        'resourceTypes',
        resourceTypes,
      );
    return helper.toString();
  }
}

class ResourceStatementEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ResourceStatement> {
  const ResourceStatementEc2QuerySerializer() : super('ResourceStatement');

  @override
  Iterable<Type> get types => const [
        ResourceStatement,
        _$ResourceStatement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResourceStatement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceStatementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceSet':
          result.resources.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'resourceTypeSet':
          result.resourceTypes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceStatement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ResourceStatementResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResourceStatement(:resources, :resourceTypes) = object;
    if (resources != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          resources,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (resourceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceTypeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          resourceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
