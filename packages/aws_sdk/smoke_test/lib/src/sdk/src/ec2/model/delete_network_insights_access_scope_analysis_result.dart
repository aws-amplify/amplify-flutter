// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_access_scope_analysis_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_network_insights_access_scope_analysis_result.g.dart';

abstract class DeleteNetworkInsightsAccessScopeAnalysisResult
    with
        _i1.AWSEquatable<DeleteNetworkInsightsAccessScopeAnalysisResult>
    implements
        Built<DeleteNetworkInsightsAccessScopeAnalysisResult,
            DeleteNetworkInsightsAccessScopeAnalysisResultBuilder> {
  factory DeleteNetworkInsightsAccessScopeAnalysisResult(
      {String? networkInsightsAccessScopeAnalysisId}) {
    return _$DeleteNetworkInsightsAccessScopeAnalysisResult._(
        networkInsightsAccessScopeAnalysisId:
            networkInsightsAccessScopeAnalysisId);
  }

  factory DeleteNetworkInsightsAccessScopeAnalysisResult.build(
      [void Function(DeleteNetworkInsightsAccessScopeAnalysisResultBuilder)
          updates]) = _$DeleteNetworkInsightsAccessScopeAnalysisResult;

  const DeleteNetworkInsightsAccessScopeAnalysisResult._();

  /// Constructs a [DeleteNetworkInsightsAccessScopeAnalysisResult] from a [payload] and [response].
  factory DeleteNetworkInsightsAccessScopeAnalysisResult.fromResponse(
    DeleteNetworkInsightsAccessScopeAnalysisResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DeleteNetworkInsightsAccessScopeAnalysisResult>>
      serializers = [
    DeleteNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer()
  ];

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;
  @override
  List<Object?> get props => [networkInsightsAccessScopeAnalysisId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteNetworkInsightsAccessScopeAnalysisResult')
      ..add(
        'networkInsightsAccessScopeAnalysisId',
        networkInsightsAccessScopeAnalysisId,
      );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeleteNetworkInsightsAccessScopeAnalysisResult> {
  const DeleteNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer()
      : super('DeleteNetworkInsightsAccessScopeAnalysisResult');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAccessScopeAnalysisResult,
        _$DeleteNetworkInsightsAccessScopeAnalysisResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAccessScopeAnalysisResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAccessScopeAnalysisResultBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteNetworkInsightsAccessScopeAnalysisResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteNetworkInsightsAccessScopeAnalysisResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsAccessScopeAnalysisResult(
      :networkInsightsAccessScopeAnalysisId
    ) = object;
    if (networkInsightsAccessScopeAnalysisId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
