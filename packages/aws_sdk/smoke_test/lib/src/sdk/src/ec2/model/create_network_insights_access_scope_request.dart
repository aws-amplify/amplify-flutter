// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_insights_access_scope_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_network_insights_access_scope_request.g.dart';

abstract class CreateNetworkInsightsAccessScopeRequest
    with
        _i1.HttpInput<CreateNetworkInsightsAccessScopeRequest>,
        _i2.AWSEquatable<CreateNetworkInsightsAccessScopeRequest>
    implements
        Built<CreateNetworkInsightsAccessScopeRequest,
            CreateNetworkInsightsAccessScopeRequestBuilder> {
  factory CreateNetworkInsightsAccessScopeRequest({
    List<AccessScopePathRequest>? matchPaths,
    List<AccessScopePathRequest>? excludePaths,
    String? clientToken,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateNetworkInsightsAccessScopeRequest._(
      matchPaths: matchPaths == null ? null : _i3.BuiltList(matchPaths),
      excludePaths: excludePaths == null ? null : _i3.BuiltList(excludePaths),
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateNetworkInsightsAccessScopeRequest.build(
      [void Function(CreateNetworkInsightsAccessScopeRequestBuilder)
          updates]) = _$CreateNetworkInsightsAccessScopeRequest;

  const CreateNetworkInsightsAccessScopeRequest._();

  factory CreateNetworkInsightsAccessScopeRequest.fromRequest(
    CreateNetworkInsightsAccessScopeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateNetworkInsightsAccessScopeRequest>>
      serializers = [
    CreateNetworkInsightsAccessScopeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInsightsAccessScopeRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The paths to match.
  _i3.BuiltList<AccessScopePathRequest>? get matchPaths;

  /// The paths to exclude.
  _i3.BuiltList<AccessScopePathRequest>? get excludePaths;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The tags to apply.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateNetworkInsightsAccessScopeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        matchPaths,
        excludePaths,
        clientToken,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsAccessScopeRequest')
          ..add(
            'matchPaths',
            matchPaths,
          )
          ..add(
            'excludePaths',
            excludePaths,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateNetworkInsightsAccessScopeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateNetworkInsightsAccessScopeRequest> {
  const CreateNetworkInsightsAccessScopeRequestEc2QuerySerializer()
      : super('CreateNetworkInsightsAccessScopeRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsAccessScopeRequest,
        _$CreateNetworkInsightsAccessScopeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsAccessScopeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsAccessScopeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MatchPath':
          result.matchPaths.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AccessScopePathRequest)],
            ),
          ) as _i3.BuiltList<AccessScopePathRequest>));
        case 'ExcludePath':
          result.excludePaths.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AccessScopePathRequest)],
            ),
          ) as _i3.BuiltList<AccessScopePathRequest>));
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    CreateNetworkInsightsAccessScopeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInsightsAccessScopeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInsightsAccessScopeRequest(
      :matchPaths,
      :excludePaths,
      :clientToken,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (matchPaths != null) {
      result$
        ..add(const _i1.XmlElementName('MatchPath'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          matchPaths,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AccessScopePathRequest)],
          ),
        ));
    }
    if (excludePaths != null) {
      result$
        ..add(const _i1.XmlElementName('ExcludePath'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          excludePaths,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AccessScopePathRequest)],
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
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
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
