// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.access_scope_path; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement.dart';

part 'access_scope_path.g.dart';

/// Describes a path.
abstract class AccessScopePath
    with _i1.AWSEquatable<AccessScopePath>
    implements Built<AccessScopePath, AccessScopePathBuilder> {
  /// Describes a path.
  factory AccessScopePath({
    PathStatement? source,
    PathStatement? destination,
    List<ThroughResourcesStatement>? throughResources,
  }) {
    return _$AccessScopePath._(
      source: source,
      destination: destination,
      throughResources:
          throughResources == null ? null : _i2.BuiltList(throughResources),
    );
  }

  /// Describes a path.
  factory AccessScopePath.build(
      [void Function(AccessScopePathBuilder) updates]) = _$AccessScopePath;

  const AccessScopePath._();

  static const List<_i3.SmithySerializer<AccessScopePath>> serializers = [
    AccessScopePathEc2QuerySerializer()
  ];

  /// The source.
  PathStatement? get source;

  /// The destination.
  PathStatement? get destination;

  /// The through resources.
  _i2.BuiltList<ThroughResourcesStatement>? get throughResources;
  @override
  List<Object?> get props => [
        source,
        destination,
        throughResources,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessScopePath')
      ..add(
        'source',
        source,
      )
      ..add(
        'destination',
        destination,
      )
      ..add(
        'throughResources',
        throughResources,
      );
    return helper.toString();
  }
}

class AccessScopePathEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AccessScopePath> {
  const AccessScopePathEc2QuerySerializer() : super('AccessScopePath');

  @override
  Iterable<Type> get types => const [
        AccessScopePath,
        _$AccessScopePath,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccessScopePath deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessScopePathBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'source':
          result.source.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathStatement),
          ) as PathStatement));
        case 'destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathStatement),
          ) as PathStatement));
        case 'throughResourceSet':
          result.throughResources.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ThroughResourcesStatement)],
            ),
          ) as _i2.BuiltList<ThroughResourcesStatement>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessScopePath object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AccessScopePathResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AccessScopePath(:source, :destination, :throughResources) = object;
    if (source != null) {
      result$
        ..add(const _i3.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(PathStatement),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i3.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(PathStatement),
        ));
    }
    if (throughResources != null) {
      result$
        ..add(const _i3.XmlElementName('ThroughResourceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          throughResources,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ThroughResourcesStatement)],
          ),
        ));
    }
    return result$;
  }
}
