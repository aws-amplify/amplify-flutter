// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.access_scope_analysis_finding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/path_component.dart';

part 'access_scope_analysis_finding.g.dart';

/// Describes a finding for a Network Access Scope.
abstract class AccessScopeAnalysisFinding
    with _i1.AWSEquatable<AccessScopeAnalysisFinding>
    implements
        Built<AccessScopeAnalysisFinding, AccessScopeAnalysisFindingBuilder> {
  /// Describes a finding for a Network Access Scope.
  factory AccessScopeAnalysisFinding({
    String? networkInsightsAccessScopeAnalysisId,
    String? networkInsightsAccessScopeId,
    String? findingId,
    List<PathComponent>? findingComponents,
  }) {
    return _$AccessScopeAnalysisFinding._(
      networkInsightsAccessScopeAnalysisId:
          networkInsightsAccessScopeAnalysisId,
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      findingId: findingId,
      findingComponents:
          findingComponents == null ? null : _i2.BuiltList(findingComponents),
    );
  }

  /// Describes a finding for a Network Access Scope.
  factory AccessScopeAnalysisFinding.build(
          [void Function(AccessScopeAnalysisFindingBuilder) updates]) =
      _$AccessScopeAnalysisFinding;

  const AccessScopeAnalysisFinding._();

  static const List<_i3.SmithySerializer<AccessScopeAnalysisFinding>>
      serializers = [AccessScopeAnalysisFindingEc2QuerySerializer()];

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The ID of the finding.
  String? get findingId;

  /// The finding components.
  _i2.BuiltList<PathComponent>? get findingComponents;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisId,
        networkInsightsAccessScopeId,
        findingId,
        findingComponents,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessScopeAnalysisFinding')
      ..add(
        'networkInsightsAccessScopeAnalysisId',
        networkInsightsAccessScopeAnalysisId,
      )
      ..add(
        'networkInsightsAccessScopeId',
        networkInsightsAccessScopeId,
      )
      ..add(
        'findingId',
        findingId,
      )
      ..add(
        'findingComponents',
        findingComponents,
      );
    return helper.toString();
  }
}

class AccessScopeAnalysisFindingEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AccessScopeAnalysisFinding> {
  const AccessScopeAnalysisFindingEc2QuerySerializer()
      : super('AccessScopeAnalysisFinding');

  @override
  Iterable<Type> get types => const [
        AccessScopeAnalysisFinding,
        _$AccessScopeAnalysisFinding,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccessScopeAnalysisFinding deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessScopeAnalysisFindingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeAnalysisId':
          result.networkInsightsAccessScopeAnalysisId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'findingId':
          result.findingId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'findingComponentSet':
          result.findingComponents.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PathComponent)],
            ),
          ) as _i2.BuiltList<PathComponent>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessScopeAnalysisFinding object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AccessScopeAnalysisFindingResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AccessScopeAnalysisFinding(
      :networkInsightsAccessScopeAnalysisId,
      :networkInsightsAccessScopeId,
      :findingId,
      :findingComponents
    ) = object;
    if (networkInsightsAccessScopeAnalysisId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsAccessScopeId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (findingId != null) {
      result$
        ..add(const _i3.XmlElementName('FindingId'))
        ..add(serializers.serialize(
          findingId,
          specifiedType: const FullType(String),
        ));
    }
    if (findingComponents != null) {
      result$
        ..add(const _i3.XmlElementName('FindingComponentSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          findingComponents,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PathComponent)],
          ),
        ));
    }
    return result$;
  }
}
