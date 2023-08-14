// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_insights_access_scope_content; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path.dart';

part 'network_insights_access_scope_content.g.dart';

/// Describes the Network Access Scope content.
abstract class NetworkInsightsAccessScopeContent
    with
        _i1.AWSEquatable<NetworkInsightsAccessScopeContent>
    implements
        Built<NetworkInsightsAccessScopeContent,
            NetworkInsightsAccessScopeContentBuilder> {
  /// Describes the Network Access Scope content.
  factory NetworkInsightsAccessScopeContent({
    String? networkInsightsAccessScopeId,
    List<AccessScopePath>? matchPaths,
    List<AccessScopePath>? excludePaths,
  }) {
    return _$NetworkInsightsAccessScopeContent._(
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      matchPaths: matchPaths == null ? null : _i2.BuiltList(matchPaths),
      excludePaths: excludePaths == null ? null : _i2.BuiltList(excludePaths),
    );
  }

  /// Describes the Network Access Scope content.
  factory NetworkInsightsAccessScopeContent.build(
          [void Function(NetworkInsightsAccessScopeContentBuilder) updates]) =
      _$NetworkInsightsAccessScopeContent;

  const NetworkInsightsAccessScopeContent._();

  static const List<_i3.SmithySerializer<NetworkInsightsAccessScopeContent>>
      serializers = [NetworkInsightsAccessScopeContentEc2QuerySerializer()];

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The paths to match.
  _i2.BuiltList<AccessScopePath>? get matchPaths;

  /// The paths to exclude.
  _i2.BuiltList<AccessScopePath>? get excludePaths;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeId,
        matchPaths,
        excludePaths,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInsightsAccessScopeContent')
          ..add(
            'networkInsightsAccessScopeId',
            networkInsightsAccessScopeId,
          )
          ..add(
            'matchPaths',
            matchPaths,
          )
          ..add(
            'excludePaths',
            excludePaths,
          );
    return helper.toString();
  }
}

class NetworkInsightsAccessScopeContentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInsightsAccessScopeContent> {
  const NetworkInsightsAccessScopeContentEc2QuerySerializer()
      : super('NetworkInsightsAccessScopeContent');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAccessScopeContent,
        _$NetworkInsightsAccessScopeContent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAccessScopeContent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAccessScopeContentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'matchPathSet':
          result.matchPaths.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AccessScopePath)],
            ),
          ) as _i2.BuiltList<AccessScopePath>));
        case 'excludePathSet':
          result.excludePaths.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AccessScopePath)],
            ),
          ) as _i2.BuiltList<AccessScopePath>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInsightsAccessScopeContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NetworkInsightsAccessScopeContentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInsightsAccessScopeContent(
      :networkInsightsAccessScopeId,
      :matchPaths,
      :excludePaths
    ) = object;
    if (networkInsightsAccessScopeId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (matchPaths != null) {
      result$
        ..add(const _i3.XmlElementName('MatchPathSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          matchPaths,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AccessScopePath)],
          ),
        ));
    }
    if (excludePaths != null) {
      result$
        ..add(const _i3.XmlElementName('ExcludePathSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          excludePaths,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AccessScopePath)],
          ),
        ));
    }
    return result$;
  }
}
