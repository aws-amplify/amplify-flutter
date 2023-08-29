// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_analysis_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_insights_analysis_request.g.dart';

abstract class DeleteNetworkInsightsAnalysisRequest
    with
        _i1.HttpInput<DeleteNetworkInsightsAnalysisRequest>,
        _i2.AWSEquatable<DeleteNetworkInsightsAnalysisRequest>
    implements
        Built<DeleteNetworkInsightsAnalysisRequest,
            DeleteNetworkInsightsAnalysisRequestBuilder> {
  factory DeleteNetworkInsightsAnalysisRequest({
    bool? dryRun,
    String? networkInsightsAnalysisId,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkInsightsAnalysisRequest._(
      dryRun: dryRun,
      networkInsightsAnalysisId: networkInsightsAnalysisId,
    );
  }

  factory DeleteNetworkInsightsAnalysisRequest.build(
      [void Function(DeleteNetworkInsightsAnalysisRequestBuilder)
          updates]) = _$DeleteNetworkInsightsAnalysisRequest;

  const DeleteNetworkInsightsAnalysisRequest._();

  factory DeleteNetworkInsightsAnalysisRequest.fromRequest(
    DeleteNetworkInsightsAnalysisRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteNetworkInsightsAnalysisRequest>>
      serializers = [DeleteNetworkInsightsAnalysisRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInsightsAnalysisRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network insights analysis.
  String? get networkInsightsAnalysisId;
  @override
  DeleteNetworkInsightsAnalysisRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkInsightsAnalysisId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsAnalysisRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'networkInsightsAnalysisId',
            networkInsightsAnalysisId,
          );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAnalysisRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteNetworkInsightsAnalysisRequest> {
  const DeleteNetworkInsightsAnalysisRequestEc2QuerySerializer()
      : super('DeleteNetworkInsightsAnalysisRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAnalysisRequest,
        _$DeleteNetworkInsightsAnalysisRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAnalysisRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAnalysisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NetworkInsightsAnalysisId':
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
    DeleteNetworkInsightsAnalysisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInsightsAnalysisRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsAnalysisRequest(
      :dryRun,
      :networkInsightsAnalysisId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (networkInsightsAnalysisId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
