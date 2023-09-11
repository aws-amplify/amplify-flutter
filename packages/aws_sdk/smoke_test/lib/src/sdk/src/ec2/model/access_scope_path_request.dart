// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.access_scope_path_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement_request.dart';

part 'access_scope_path_request.g.dart';

/// Describes a path.
abstract class AccessScopePathRequest
    with _i1.AWSEquatable<AccessScopePathRequest>
    implements Built<AccessScopePathRequest, AccessScopePathRequestBuilder> {
  /// Describes a path.
  factory AccessScopePathRequest({
    PathStatementRequest? source,
    PathStatementRequest? destination,
    List<ThroughResourcesStatementRequest>? throughResources,
  }) {
    return _$AccessScopePathRequest._(
      source: source,
      destination: destination,
      throughResources:
          throughResources == null ? null : _i2.BuiltList(throughResources),
    );
  }

  /// Describes a path.
  factory AccessScopePathRequest.build(
          [void Function(AccessScopePathRequestBuilder) updates]) =
      _$AccessScopePathRequest;

  const AccessScopePathRequest._();

  static const List<_i3.SmithySerializer<AccessScopePathRequest>> serializers =
      [AccessScopePathRequestEc2QuerySerializer()];

  /// The source.
  PathStatementRequest? get source;

  /// The destination.
  PathStatementRequest? get destination;

  /// The through resources.
  _i2.BuiltList<ThroughResourcesStatementRequest>? get throughResources;
  @override
  List<Object?> get props => [
        source,
        destination,
        throughResources,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessScopePathRequest')
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

class AccessScopePathRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AccessScopePathRequest> {
  const AccessScopePathRequestEc2QuerySerializer()
      : super('AccessScopePathRequest');

  @override
  Iterable<Type> get types => const [
        AccessScopePathRequest,
        _$AccessScopePathRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccessScopePathRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessScopePathRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Source':
          result.source.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathStatementRequest),
          ) as PathStatementRequest));
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PathStatementRequest),
          ) as PathStatementRequest));
        case 'ThroughResource':
          result.throughResources.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ThroughResourcesStatementRequest)],
            ),
          ) as _i2.BuiltList<ThroughResourcesStatementRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessScopePathRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AccessScopePathRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AccessScopePathRequest(:source, :destination, :throughResources) =
        object;
    if (source != null) {
      result$
        ..add(const _i3.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(PathStatementRequest),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i3.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(PathStatementRequest),
        ));
    }
    if (throughResources != null) {
      result$
        ..add(const _i3.XmlElementName('ThroughResource'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          throughResources,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ThroughResourcesStatementRequest)],
          ),
        ));
    }
    return result$;
  }
}
