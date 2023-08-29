// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_insights_analysis; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/alternate_path_hint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/explanation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/path_component.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'network_insights_analysis.g.dart';

/// Describes a network insights analysis.
abstract class NetworkInsightsAnalysis
    with _i1.AWSEquatable<NetworkInsightsAnalysis>
    implements Built<NetworkInsightsAnalysis, NetworkInsightsAnalysisBuilder> {
  /// Describes a network insights analysis.
  factory NetworkInsightsAnalysis({
    String? networkInsightsAnalysisId,
    String? networkInsightsAnalysisArn,
    String? networkInsightsPathId,
    List<String>? additionalAccounts,
    List<String>? filterInArns,
    DateTime? startDate,
    AnalysisStatus? status,
    String? statusMessage,
    String? warningMessage,
    bool? networkPathFound,
    List<PathComponent>? forwardPathComponents,
    List<PathComponent>? returnPathComponents,
    List<Explanation>? explanations,
    List<AlternatePathHint>? alternatePathHints,
    List<String>? suggestedAccounts,
    List<Tag>? tags,
  }) {
    networkPathFound ??= false;
    return _$NetworkInsightsAnalysis._(
      networkInsightsAnalysisId: networkInsightsAnalysisId,
      networkInsightsAnalysisArn: networkInsightsAnalysisArn,
      networkInsightsPathId: networkInsightsPathId,
      additionalAccounts:
          additionalAccounts == null ? null : _i2.BuiltList(additionalAccounts),
      filterInArns: filterInArns == null ? null : _i2.BuiltList(filterInArns),
      startDate: startDate,
      status: status,
      statusMessage: statusMessage,
      warningMessage: warningMessage,
      networkPathFound: networkPathFound,
      forwardPathComponents: forwardPathComponents == null
          ? null
          : _i2.BuiltList(forwardPathComponents),
      returnPathComponents: returnPathComponents == null
          ? null
          : _i2.BuiltList(returnPathComponents),
      explanations: explanations == null ? null : _i2.BuiltList(explanations),
      alternatePathHints:
          alternatePathHints == null ? null : _i2.BuiltList(alternatePathHints),
      suggestedAccounts:
          suggestedAccounts == null ? null : _i2.BuiltList(suggestedAccounts),
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a network insights analysis.
  factory NetworkInsightsAnalysis.build(
          [void Function(NetworkInsightsAnalysisBuilder) updates]) =
      _$NetworkInsightsAnalysis;

  const NetworkInsightsAnalysis._();

  static const List<_i3.SmithySerializer<NetworkInsightsAnalysis>> serializers =
      [NetworkInsightsAnalysisEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsAnalysisBuilder b) {
    b.networkPathFound = false;
  }

  /// The ID of the network insights analysis.
  String? get networkInsightsAnalysisId;

  /// The Amazon Resource Name (ARN) of the network insights analysis.
  String? get networkInsightsAnalysisArn;

  /// The ID of the path.
  String? get networkInsightsPathId;

  /// The member accounts that contain resources that the path can traverse.
  _i2.BuiltList<String>? get additionalAccounts;

  /// The Amazon Resource Names (ARN) of the resources that the path must traverse.
  _i2.BuiltList<String>? get filterInArns;

  /// The time the analysis started.
  DateTime? get startDate;

  /// The status of the network insights analysis.
  AnalysisStatus? get status;

  /// The status message, if the status is `failed`.
  String? get statusMessage;

  /// The warning message.
  String? get warningMessage;

  /// Indicates whether the destination is reachable from the source.
  bool get networkPathFound;

  /// The components in the path from source to destination.
  _i2.BuiltList<PathComponent>? get forwardPathComponents;

  /// The components in the path from destination to source.
  _i2.BuiltList<PathComponent>? get returnPathComponents;

  /// The explanations. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  _i2.BuiltList<Explanation>? get explanations;

  /// Potential intermediate components.
  _i2.BuiltList<AlternatePathHint>? get alternatePathHints;

  /// Potential intermediate accounts.
  _i2.BuiltList<String>? get suggestedAccounts;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        networkInsightsAnalysisId,
        networkInsightsAnalysisArn,
        networkInsightsPathId,
        additionalAccounts,
        filterInArns,
        startDate,
        status,
        statusMessage,
        warningMessage,
        networkPathFound,
        forwardPathComponents,
        returnPathComponents,
        explanations,
        alternatePathHints,
        suggestedAccounts,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInsightsAnalysis')
      ..add(
        'networkInsightsAnalysisId',
        networkInsightsAnalysisId,
      )
      ..add(
        'networkInsightsAnalysisArn',
        networkInsightsAnalysisArn,
      )
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
        'startDate',
        startDate,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'warningMessage',
        warningMessage,
      )
      ..add(
        'networkPathFound',
        networkPathFound,
      )
      ..add(
        'forwardPathComponents',
        forwardPathComponents,
      )
      ..add(
        'returnPathComponents',
        returnPathComponents,
      )
      ..add(
        'explanations',
        explanations,
      )
      ..add(
        'alternatePathHints',
        alternatePathHints,
      )
      ..add(
        'suggestedAccounts',
        suggestedAccounts,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class NetworkInsightsAnalysisEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInsightsAnalysis> {
  const NetworkInsightsAnalysisEc2QuerySerializer()
      : super('NetworkInsightsAnalysis');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAnalysis,
        _$NetworkInsightsAnalysis,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAnalysis deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAnalysisBuilder();
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
        case 'networkInsightsAnalysisArn':
          result.networkInsightsAnalysisArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInsightsPathId':
          result.networkInsightsPathId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'additionalAccountSet':
          result.additionalAccounts.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'filterInArnSet':
          result.filterInArns.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'startDate':
          result.startDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisStatus),
          ) as AnalysisStatus);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'warningMessage':
          result.warningMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkPathFound':
          result.networkPathFound = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'forwardPathComponentSet':
          result.forwardPathComponents
              .replace((const _i3.XmlBuiltListSerializer(
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
        case 'returnPathComponentSet':
          result.returnPathComponents.replace((const _i3.XmlBuiltListSerializer(
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
        case 'explanationSet':
          result.explanations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Explanation)],
            ),
          ) as _i2.BuiltList<Explanation>));
        case 'alternatePathHintSet':
          result.alternatePathHints.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AlternatePathHint)],
            ),
          ) as _i2.BuiltList<AlternatePathHint>));
        case 'suggestedAccountSet':
          result.suggestedAccounts.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInsightsAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NetworkInsightsAnalysisResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInsightsAnalysis(
      :networkInsightsAnalysisId,
      :networkInsightsAnalysisArn,
      :networkInsightsPathId,
      :additionalAccounts,
      :filterInArns,
      :startDate,
      :status,
      :statusMessage,
      :warningMessage,
      :networkPathFound,
      :forwardPathComponents,
      :returnPathComponents,
      :explanations,
      :alternatePathHints,
      :suggestedAccounts,
      :tags
    ) = object;
    if (networkInsightsAnalysisId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsAnalysisArn != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAnalysisArn'))
        ..add(serializers.serialize(
          networkInsightsAnalysisArn,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsPathId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          networkInsightsPathId,
          specifiedType: const FullType(String),
        ));
    }
    if (additionalAccounts != null) {
      result$
        ..add(const _i3.XmlElementName('AdditionalAccountSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          additionalAccounts,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filterInArns != null) {
      result$
        ..add(const _i3.XmlElementName('FilterInArnSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filterInArns,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (startDate != null) {
      result$
        ..add(const _i3.XmlElementName('StartDate'))
        ..add(serializers.serialize(
          startDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(AnalysisStatus),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (warningMessage != null) {
      result$
        ..add(const _i3.XmlElementName('WarningMessage'))
        ..add(serializers.serialize(
          warningMessage,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('NetworkPathFound'))
      ..add(serializers.serialize(
        networkPathFound,
        specifiedType: const FullType(bool),
      ));
    if (forwardPathComponents != null) {
      result$
        ..add(const _i3.XmlElementName('ForwardPathComponentSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          forwardPathComponents,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PathComponent)],
          ),
        ));
    }
    if (returnPathComponents != null) {
      result$
        ..add(const _i3.XmlElementName('ReturnPathComponentSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          returnPathComponents,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PathComponent)],
          ),
        ));
    }
    if (explanations != null) {
      result$
        ..add(const _i3.XmlElementName('ExplanationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          explanations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Explanation)],
          ),
        ));
    }
    if (alternatePathHints != null) {
      result$
        ..add(const _i3.XmlElementName('AlternatePathHintSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          alternatePathHints,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AlternatePathHint)],
          ),
        ));
    }
    if (suggestedAccounts != null) {
      result$
        ..add(const _i3.XmlElementName('SuggestedAccountSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          suggestedAccounts,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
