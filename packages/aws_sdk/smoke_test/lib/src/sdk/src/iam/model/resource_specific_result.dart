// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.resource_specific_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_decision_detail.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/policy_evaluation_decision_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/statement.dart' as _i3;

part 'resource_specific_result.g.dart';

/// Contains the result of the simulation of a single API operation call on a single resource.
///
/// This data type is used by a member of the EvaluationResult data type.
abstract class ResourceSpecificResult
    with _i1.AWSEquatable<ResourceSpecificResult>
    implements Built<ResourceSpecificResult, ResourceSpecificResultBuilder> {
  /// Contains the result of the simulation of a single API operation call on a single resource.
  ///
  /// This data type is used by a member of the EvaluationResult data type.
  factory ResourceSpecificResult({
    required String evalResourceName,
    required _i2.PolicyEvaluationDecisionType evalResourceDecision,
    List<_i3.Statement>? matchedStatements,
    List<String>? missingContextValues,
    Map<String, _i2.PolicyEvaluationDecisionType>? evalDecisionDetails,
    _i4.PermissionsBoundaryDecisionDetail? permissionsBoundaryDecisionDetail,
  }) {
    return _$ResourceSpecificResult._(
      evalResourceName: evalResourceName,
      evalResourceDecision: evalResourceDecision,
      matchedStatements:
          matchedStatements == null ? null : _i5.BuiltList(matchedStatements),
      missingContextValues: missingContextValues == null
          ? null
          : _i5.BuiltList(missingContextValues),
      evalDecisionDetails: evalDecisionDetails == null
          ? null
          : _i5.BuiltMap(evalDecisionDetails),
      permissionsBoundaryDecisionDetail: permissionsBoundaryDecisionDetail,
    );
  }

  /// Contains the result of the simulation of a single API operation call on a single resource.
  ///
  /// This data type is used by a member of the EvaluationResult data type.
  factory ResourceSpecificResult.build(
          [void Function(ResourceSpecificResultBuilder) updates]) =
      _$ResourceSpecificResult;

  const ResourceSpecificResult._();

  static const List<_i6.SmithySerializer<ResourceSpecificResult>> serializers =
      [ResourceSpecificResultAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceSpecificResultBuilder b) {}

  /// The name of the simulated resource, in Amazon Resource Name (ARN) format.
  String get evalResourceName;

  /// The result of the simulation of the simulated API operation on the resource specified in `EvalResourceName`.
  _i2.PolicyEvaluationDecisionType get evalResourceDecision;

  /// A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the operation on the resource, if _any_ statement denies that operation, then the explicit deny overrides any allow. In addition, the deny statement is the only entry included in the result.
  _i5.BuiltList<_i3.Statement>? get matchedStatements;

  /// A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the `ResourceArns` parameter instead of "*". If you do not specify individual resources, by setting `ResourceArns` to "*" or by not including the `ResourceArns` parameter, then any missing context values are instead included under the `EvaluationResults` section. To discover the context keys used by a set of policies, you can call GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.
  _i5.BuiltList<String>? get missingContextValues;

  /// Additional details about the results of the evaluation decision on a single resource. This parameter is returned only for cross-account simulations. This parameter explains how each policy type contributes to the resource-specific evaluation decision.
  _i5.BuiltMap<String, _i2.PolicyEvaluationDecisionType>?
      get evalDecisionDetails;

  /// Contains information about the effect that a permissions boundary has on a policy simulation when that boundary is applied to an IAM entity.
  _i4.PermissionsBoundaryDecisionDetail? get permissionsBoundaryDecisionDetail;
  @override
  List<Object?> get props => [
        evalResourceName,
        evalResourceDecision,
        matchedStatements,
        missingContextValues,
        evalDecisionDetails,
        permissionsBoundaryDecisionDetail,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceSpecificResult')
      ..add(
        'evalResourceName',
        evalResourceName,
      )
      ..add(
        'evalResourceDecision',
        evalResourceDecision,
      )
      ..add(
        'matchedStatements',
        matchedStatements,
      )
      ..add(
        'missingContextValues',
        missingContextValues,
      )
      ..add(
        'evalDecisionDetails',
        evalDecisionDetails,
      )
      ..add(
        'permissionsBoundaryDecisionDetail',
        permissionsBoundaryDecisionDetail,
      );
    return helper.toString();
  }
}

class ResourceSpecificResultAwsQuerySerializer
    extends _i6.StructuredSmithySerializer<ResourceSpecificResult> {
  const ResourceSpecificResultAwsQuerySerializer()
      : super('ResourceSpecificResult');

  @override
  Iterable<Type> get types => const [
        ResourceSpecificResult,
        _$ResourceSpecificResult,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResourceSpecificResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceSpecificResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EvalResourceName':
          result.evalResourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EvalResourceDecision':
          result.evalResourceDecision = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PolicyEvaluationDecisionType),
          ) as _i2.PolicyEvaluationDecisionType);
        case 'MatchedStatements':
          result.matchedStatements.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.Statement)],
            ),
          ) as _i5.BuiltList<_i3.Statement>));
        case 'MissingContextValues':
          result.missingContextValues.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'EvalDecisionDetails':
          result.evalDecisionDetails.replace(const _i6.XmlBuiltMapSerializer(
                  indexer: _i6.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(_i2.PolicyEvaluationDecisionType),
              ],
            ),
          ));
        case 'PermissionsBoundaryDecisionDetail':
          result.permissionsBoundaryDecisionDetail
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i4.PermissionsBoundaryDecisionDetail),
          ) as _i4.PermissionsBoundaryDecisionDetail));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceSpecificResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'ResourceSpecificResultResponse',
        _i6.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ResourceSpecificResult(
      :evalResourceName,
      :evalResourceDecision,
      :matchedStatements,
      :missingContextValues,
      :evalDecisionDetails,
      :permissionsBoundaryDecisionDetail
    ) = object;
    result$
      ..add(const _i6.XmlElementName('EvalResourceName'))
      ..add(serializers.serialize(
        evalResourceName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i6.XmlElementName('EvalResourceDecision'))
      ..add(serializers.serialize(
        evalResourceDecision,
        specifiedType:
            const FullType.nullable(_i2.PolicyEvaluationDecisionType),
      ));
    if (matchedStatements != null) {
      result$
        ..add(const _i6.XmlElementName('MatchedStatements'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          matchedStatements,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.Statement)],
          ),
        ));
    }
    if (missingContextValues != null) {
      result$
        ..add(const _i6.XmlElementName('MissingContextValues'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          missingContextValues,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (evalDecisionDetails != null) {
      result$
        ..add(const _i6.XmlElementName('EvalDecisionDetails'))
        ..add(
            const _i6.XmlBuiltMapSerializer(indexer: _i6.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          evalDecisionDetails,
          specifiedType: const FullType.nullable(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.PolicyEvaluationDecisionType),
            ],
          ),
        ));
    }
    if (permissionsBoundaryDecisionDetail != null) {
      result$
        ..add(const _i6.XmlElementName('PermissionsBoundaryDecisionDetail'))
        ..add(serializers.serialize(
          permissionsBoundaryDecisionDetail,
          specifiedType: const FullType(_i4.PermissionsBoundaryDecisionDetail),
        ));
    }
    return result$;
  }
}
