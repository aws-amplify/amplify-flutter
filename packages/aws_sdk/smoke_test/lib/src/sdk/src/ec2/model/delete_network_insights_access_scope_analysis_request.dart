// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_access_scope_analysis_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_insights_access_scope_analysis_request.g.dart';

abstract class DeleteNetworkInsightsAccessScopeAnalysisRequest
    with
        _i1.HttpInput<DeleteNetworkInsightsAccessScopeAnalysisRequest>,
        _i2.AWSEquatable<DeleteNetworkInsightsAccessScopeAnalysisRequest>
    implements
        Built<DeleteNetworkInsightsAccessScopeAnalysisRequest,
            DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder> {
  factory DeleteNetworkInsightsAccessScopeAnalysisRequest({
    String? networkInsightsAccessScopeAnalysisId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkInsightsAccessScopeAnalysisRequest._(
      networkInsightsAccessScopeAnalysisId:
          networkInsightsAccessScopeAnalysisId,
      dryRun: dryRun,
    );
  }

  factory DeleteNetworkInsightsAccessScopeAnalysisRequest.build(
      [void Function(DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder)
          updates]) = _$DeleteNetworkInsightsAccessScopeAnalysisRequest;

  const DeleteNetworkInsightsAccessScopeAnalysisRequest._();

  factory DeleteNetworkInsightsAccessScopeAnalysisRequest.fromRequest(
    DeleteNetworkInsightsAccessScopeAnalysisRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteNetworkInsightsAccessScopeAnalysisRequest>>
      serializers = [
    DeleteNetworkInsightsAccessScopeAnalysisRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteNetworkInsightsAccessScopeAnalysisRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteNetworkInsightsAccessScopeAnalysisRequest')
      ..add(
        'networkInsightsAccessScopeAnalysisId',
        networkInsightsAccessScopeAnalysisId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAccessScopeAnalysisRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeleteNetworkInsightsAccessScopeAnalysisRequest> {
  const DeleteNetworkInsightsAccessScopeAnalysisRequestEc2QuerySerializer()
      : super('DeleteNetworkInsightsAccessScopeAnalysisRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAccessScopeAnalysisRequest,
        _$DeleteNetworkInsightsAccessScopeAnalysisRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAccessScopeAnalysisRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInsightsAccessScopeAnalysisId':
          result.networkInsightsAccessScopeAnalysisId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteNetworkInsightsAccessScopeAnalysisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInsightsAccessScopeAnalysisRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsAccessScopeAnalysisRequest(
      :networkInsightsAccessScopeAnalysisId,
      :dryRun
    ) = object;
    if (networkInsightsAccessScopeAnalysisId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
