// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.evaluation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/organizations_decision_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_decision_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_evaluation_decision_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/resource_specific_result.dart';
import 'package:smoke_test/src/sdk/src/iam/model/statement.dart';

part 'evaluation_result.g.dart';

/// Contains the results of a simulation.
///
/// This data type is used by the return parameter of `SimulateCustomPolicy` and `SimulatePrincipalPolicy` .
abstract class EvaluationResult
    with _i1.AWSEquatable<EvaluationResult>
    implements Built<EvaluationResult, EvaluationResultBuilder> {
  /// Contains the results of a simulation.
  ///
  /// This data type is used by the return parameter of `SimulateCustomPolicy` and `SimulatePrincipalPolicy` .
  factory EvaluationResult({
    required String evalActionName,
    String? evalResourceName,
    required PolicyEvaluationDecisionType evalDecision,
    List<Statement>? matchedStatements,
    List<String>? missingContextValues,
    OrganizationsDecisionDetail? organizationsDecisionDetail,
    PermissionsBoundaryDecisionDetail? permissionsBoundaryDecisionDetail,
    Map<String, PolicyEvaluationDecisionType>? evalDecisionDetails,
    List<ResourceSpecificResult>? resourceSpecificResults,
  }) {
    return _$EvaluationResult._(
      evalActionName: evalActionName,
      evalResourceName: evalResourceName,
      evalDecision: evalDecision,
      matchedStatements:
          matchedStatements == null ? null : _i2.BuiltList(matchedStatements),
      missingContextValues: missingContextValues == null
          ? null
          : _i2.BuiltList(missingContextValues),
      organizationsDecisionDetail: organizationsDecisionDetail,
      permissionsBoundaryDecisionDetail: permissionsBoundaryDecisionDetail,
      evalDecisionDetails: evalDecisionDetails == null
          ? null
          : _i2.BuiltMap(evalDecisionDetails),
      resourceSpecificResults: resourceSpecificResults == null
          ? null
          : _i2.BuiltList(resourceSpecificResults),
    );
  }

  /// Contains the results of a simulation.
  ///
  /// This data type is used by the return parameter of `SimulateCustomPolicy` and `SimulatePrincipalPolicy` .
  factory EvaluationResult.build(
      [void Function(EvaluationResultBuilder) updates]) = _$EvaluationResult;

  const EvaluationResult._();

  static const List<_i3.SmithySerializer<EvaluationResult>> serializers = [
    EvaluationResultAwsQuerySerializer()
  ];

  /// The name of the API operation tested on the indicated resource.
  String get evalActionName;

  /// The ARN of the resource that the indicated API operation was tested on.
  String? get evalResourceName;

  /// The result of the simulation.
  PolicyEvaluationDecisionType get evalDecision;

  /// A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the operation on the resource, if only one statement denies that operation, then the explicit deny overrides any allow. In addition, the deny statement is the only entry included in the result.
  _i2.BuiltList<Statement>? get matchedStatements;

  /// A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is "*", either explicitly, or when the `ResourceArns` parameter blank. If you include a list of resources, then any missing context values are instead included under the `ResourceSpecificResults` section. To discover the context keys used by a set of policies, you can call GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.
  _i2.BuiltList<String>? get missingContextValues;

  /// A structure that details how Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.
  OrganizationsDecisionDetail? get organizationsDecisionDetail;

  /// Contains information about the effect that a permissions boundary has on a policy simulation when the boundary is applied to an IAM entity.
  PermissionsBoundaryDecisionDetail? get permissionsBoundaryDecisionDetail;

  /// Additional details about the results of the cross-account evaluation decision. This parameter is populated for only cross-account simulations. It contains a brief summary of how each policy type contributes to the final evaluation decision.
  ///
  /// If the simulation evaluates policies within the same account and includes a resource ARN, then the parameter is present but the response is empty. If the simulation evaluates policies within the same account and specifies all resources (`*`), then the parameter is not returned.
  ///
  /// When you make a cross-account request, Amazon Web Services evaluates the request in the trusting account and the trusted account. The request is allowed only if both evaluations return `true`. For more information about how policies are evaluated, see [Evaluating policies within a single account](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics).
  ///
  /// If an Organizations SCP included in the evaluation denies access, the simulation ends. In this case, policy evaluation does not proceed any further and this parameter is not returned.
  _i2.BuiltMap<String, PolicyEvaluationDecisionType>? get evalDecisionDetails;

  /// The individual results of the simulation of the API operation specified in EvalActionName on each resource.
  _i2.BuiltList<ResourceSpecificResult>? get resourceSpecificResults;
  @override
  List<Object?> get props => [
        evalActionName,
        evalResourceName,
        evalDecision,
        matchedStatements,
        missingContextValues,
        organizationsDecisionDetail,
        permissionsBoundaryDecisionDetail,
        evalDecisionDetails,
        resourceSpecificResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationResult')
      ..add(
        'evalActionName',
        evalActionName,
      )
      ..add(
        'evalResourceName',
        evalResourceName,
      )
      ..add(
        'evalDecision',
        evalDecision,
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
        'organizationsDecisionDetail',
        organizationsDecisionDetail,
      )
      ..add(
        'permissionsBoundaryDecisionDetail',
        permissionsBoundaryDecisionDetail,
      )
      ..add(
        'evalDecisionDetails',
        evalDecisionDetails,
      )
      ..add(
        'resourceSpecificResults',
        resourceSpecificResults,
      );
    return helper.toString();
  }
}

class EvaluationResultAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<EvaluationResult> {
  const EvaluationResultAwsQuerySerializer() : super('EvaluationResult');

  @override
  Iterable<Type> get types => const [
        EvaluationResult,
        _$EvaluationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EvaluationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EvalActionName':
          result.evalActionName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EvalResourceName':
          result.evalResourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EvalDecision':
          result.evalDecision = (serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyEvaluationDecisionType),
          ) as PolicyEvaluationDecisionType);
        case 'MatchedStatements':
          result.matchedStatements.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Statement)],
            ),
          ) as _i2.BuiltList<Statement>));
        case 'MissingContextValues':
          result.missingContextValues.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'OrganizationsDecisionDetail':
          result.organizationsDecisionDetail.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OrganizationsDecisionDetail),
          ) as OrganizationsDecisionDetail));
        case 'PermissionsBoundaryDecisionDetail':
          result.permissionsBoundaryDecisionDetail
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionsBoundaryDecisionDetail),
          ) as PermissionsBoundaryDecisionDetail));
        case 'EvalDecisionDetails':
          result.evalDecisionDetails.replace(const _i3.XmlBuiltMapSerializer(
                  indexer: _i3.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(PolicyEvaluationDecisionType),
              ],
            ),
          ));
        case 'ResourceSpecificResults':
          result.resourceSpecificResults.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ResourceSpecificResult)],
            ),
          ) as _i2.BuiltList<ResourceSpecificResult>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EvaluationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'EvaluationResultResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final EvaluationResult(
      :evalActionName,
      :evalResourceName,
      :evalDecision,
      :matchedStatements,
      :missingContextValues,
      :organizationsDecisionDetail,
      :permissionsBoundaryDecisionDetail,
      :evalDecisionDetails,
      :resourceSpecificResults
    ) = object;
    result$
      ..add(const _i3.XmlElementName('EvalActionName'))
      ..add(serializers.serialize(
        evalActionName,
        specifiedType: const FullType(String),
      ));
    if (evalResourceName != null) {
      result$
        ..add(const _i3.XmlElementName('EvalResourceName'))
        ..add(serializers.serialize(
          evalResourceName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EvalDecision'))
      ..add(serializers.serialize(
        evalDecision,
        specifiedType: const FullType.nullable(PolicyEvaluationDecisionType),
      ));
    if (matchedStatements != null) {
      result$
        ..add(const _i3.XmlElementName('MatchedStatements'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          matchedStatements,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Statement)],
          ),
        ));
    }
    if (missingContextValues != null) {
      result$
        ..add(const _i3.XmlElementName('MissingContextValues'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          missingContextValues,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (organizationsDecisionDetail != null) {
      result$
        ..add(const _i3.XmlElementName('OrganizationsDecisionDetail'))
        ..add(serializers.serialize(
          organizationsDecisionDetail,
          specifiedType: const FullType(OrganizationsDecisionDetail),
        ));
    }
    if (permissionsBoundaryDecisionDetail != null) {
      result$
        ..add(const _i3.XmlElementName('PermissionsBoundaryDecisionDetail'))
        ..add(serializers.serialize(
          permissionsBoundaryDecisionDetail,
          specifiedType: const FullType(PermissionsBoundaryDecisionDetail),
        ));
    }
    if (evalDecisionDetails != null) {
      result$
        ..add(const _i3.XmlElementName('EvalDecisionDetails'))
        ..add(
            const _i3.XmlBuiltMapSerializer(indexer: _i3.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          evalDecisionDetails,
          specifiedType: const FullType.nullable(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(PolicyEvaluationDecisionType),
            ],
          ),
        ));
    }
    if (resourceSpecificResults != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceSpecificResults'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourceSpecificResults,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ResourceSpecificResult)],
          ),
        ));
    }
    return result$;
  }
}
