// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_analysis_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_network_insights_analysis_result.g.dart';

abstract class DeleteNetworkInsightsAnalysisResult
    with
        _i1.AWSEquatable<DeleteNetworkInsightsAnalysisResult>
    implements
        Built<DeleteNetworkInsightsAnalysisResult,
            DeleteNetworkInsightsAnalysisResultBuilder> {
  factory DeleteNetworkInsightsAnalysisResult(
      {String? networkInsightsAnalysisId}) {
    return _$DeleteNetworkInsightsAnalysisResult._(
        networkInsightsAnalysisId: networkInsightsAnalysisId);
  }

  factory DeleteNetworkInsightsAnalysisResult.build(
          [void Function(DeleteNetworkInsightsAnalysisResultBuilder) updates]) =
      _$DeleteNetworkInsightsAnalysisResult;

  const DeleteNetworkInsightsAnalysisResult._();

  /// Constructs a [DeleteNetworkInsightsAnalysisResult] from a [payload] and [response].
  factory DeleteNetworkInsightsAnalysisResult.fromResponse(
    DeleteNetworkInsightsAnalysisResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteNetworkInsightsAnalysisResult>>
      serializers = [DeleteNetworkInsightsAnalysisResultEc2QuerySerializer()];

  /// The ID of the network insights analysis.
  String? get networkInsightsAnalysisId;
  @override
  List<Object?> get props => [networkInsightsAnalysisId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsAnalysisResult')
          ..add(
            'networkInsightsAnalysisId',
            networkInsightsAnalysisId,
          );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAnalysisResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteNetworkInsightsAnalysisResult> {
  const DeleteNetworkInsightsAnalysisResultEc2QuerySerializer()
      : super('DeleteNetworkInsightsAnalysisResult');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAnalysisResult,
        _$DeleteNetworkInsightsAnalysisResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAnalysisResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAnalysisResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAnalysisId':
          result.networkInsightsAnalysisId = (serializers.deserialize(
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
    DeleteNetworkInsightsAnalysisResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteNetworkInsightsAnalysisResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsAnalysisResult(:networkInsightsAnalysisId) =
        object;
    if (networkInsightsAnalysisId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
