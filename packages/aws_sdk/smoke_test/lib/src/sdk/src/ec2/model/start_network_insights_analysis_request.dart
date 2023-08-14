// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.start_network_insights_analysis_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'start_network_insights_analysis_request.g.dart';

abstract class StartNetworkInsightsAnalysisRequest
    with
        _i1.HttpInput<StartNetworkInsightsAnalysisRequest>,
        _i2.AWSEquatable<StartNetworkInsightsAnalysisRequest>
    implements
        Built<StartNetworkInsightsAnalysisRequest,
            StartNetworkInsightsAnalysisRequestBuilder> {
  factory StartNetworkInsightsAnalysisRequest({
    String? networkInsightsPathId,
    List<String>? additionalAccounts,
    List<String>? filterInArns,
    bool? dryRun,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$StartNetworkInsightsAnalysisRequest._(
      networkInsightsPathId: networkInsightsPathId,
      additionalAccounts:
          additionalAccounts == null ? null : _i3.BuiltList(additionalAccounts),
      filterInArns: filterInArns == null ? null : _i3.BuiltList(filterInArns),
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
    );
  }

  factory StartNetworkInsightsAnalysisRequest.build(
          [void Function(StartNetworkInsightsAnalysisRequestBuilder) updates]) =
      _$StartNetworkInsightsAnalysisRequest;

  const StartNetworkInsightsAnalysisRequest._();

  factory StartNetworkInsightsAnalysisRequest.fromRequest(
    StartNetworkInsightsAnalysisRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<StartNetworkInsightsAnalysisRequest>>
      serializers = [StartNetworkInsightsAnalysisRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartNetworkInsightsAnalysisRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the path.
  String? get networkInsightsPathId;

  /// The member accounts that contain resources that the path can traverse.
  _i3.BuiltList<String>? get additionalAccounts;

  /// The Amazon Resource Names (ARN) of the resources that the path must traverse.
  _i3.BuiltList<String>? get filterInArns;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to apply.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  StartNetworkInsightsAnalysisRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsPathId,
        additionalAccounts,
        filterInArns,
        dryRun,
        tagSpecifications,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartNetworkInsightsAnalysisRequest')
          ..add(
            'networkInsightsPathId',
            networkInsightsPathId,
          )
          ..add(
            'additionalAccounts',
            additionalAccounts,
          )
          ..add(
            'filterInArns',
            filterInArns,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class StartNetworkInsightsAnalysisRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<StartNetworkInsightsAnalysisRequest> {
  const StartNetworkInsightsAnalysisRequestEc2QuerySerializer()
      : super('StartNetworkInsightsAnalysisRequest');

  @override
  Iterable<Type> get types => const [
        StartNetworkInsightsAnalysisRequest,
        _$StartNetworkInsightsAnalysisRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartNetworkInsightsAnalysisRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartNetworkInsightsAnalysisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInsightsPathId':
          result.networkInsightsPathId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AdditionalAccount':
          result.additionalAccounts.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'FilterInArn':
          result.filterInArns.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    StartNetworkInsightsAnalysisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'StartNetworkInsightsAnalysisRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StartNetworkInsightsAnalysisRequest(
      :networkInsightsPathId,
      :additionalAccounts,
      :filterInArns,
      :dryRun,
      :tagSpecifications,
      :clientToken
    ) = object;
    if (networkInsightsPathId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          networkInsightsPathId,
          specifiedType: const FullType(String),
        ));
    }
    if (additionalAccounts != null) {
      result$
        ..add(const _i1.XmlElementName('AdditionalAccount'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          additionalAccounts,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filterInArns != null) {
      result$
        ..add(const _i1.XmlElementName('FilterInArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filterInArns,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
