// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_launch_templates_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_launch_templates_request.g.dart';

abstract class DescribeLaunchTemplatesRequest
    with
        _i1.HttpInput<DescribeLaunchTemplatesRequest>,
        _i2.AWSEquatable<DescribeLaunchTemplatesRequest>
    implements
        Built<DescribeLaunchTemplatesRequest,
            DescribeLaunchTemplatesRequestBuilder> {
  factory DescribeLaunchTemplatesRequest({
    bool? dryRun,
    List<String>? launchTemplateIds,
    List<String>? launchTemplateNames,
    List<Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeLaunchTemplatesRequest._(
      dryRun: dryRun,
      launchTemplateIds:
          launchTemplateIds == null ? null : _i3.BuiltList(launchTemplateIds),
      launchTemplateNames: launchTemplateNames == null
          ? null
          : _i3.BuiltList(launchTemplateNames),
      filters: filters == null ? null : _i3.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeLaunchTemplatesRequest.build(
          [void Function(DescribeLaunchTemplatesRequestBuilder) updates]) =
      _$DescribeLaunchTemplatesRequest;

  const DescribeLaunchTemplatesRequest._();

  factory DescribeLaunchTemplatesRequest.fromRequest(
    DescribeLaunchTemplatesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeLaunchTemplatesRequest>>
      serializers = [DescribeLaunchTemplatesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLaunchTemplatesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more launch template IDs.
  _i3.BuiltList<String>? get launchTemplateIds;

  /// One or more launch template names.
  _i3.BuiltList<String>? get launchTemplateNames;

  /// One or more filters.
  ///
  /// *   `create-time` \- The time the launch template was created.
  ///
  /// *   `launch-template-name` \- The name of the launch template.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;

  /// The token to request the next page of results.
  String? get nextToken;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 1 and 200.
  int get maxResults;
  @override
  DescribeLaunchTemplatesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        launchTemplateIds,
        launchTemplateNames,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLaunchTemplatesRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'launchTemplateIds',
        launchTemplateIds,
      )
      ..add(
        'launchTemplateNames',
        launchTemplateNames,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      );
    return helper.toString();
  }
}

class DescribeLaunchTemplatesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeLaunchTemplatesRequest> {
  const DescribeLaunchTemplatesRequestEc2QuerySerializer()
      : super('DescribeLaunchTemplatesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLaunchTemplatesRequest,
        _$DescribeLaunchTemplatesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLaunchTemplatesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLaunchTemplatesRequestBuilder();
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
        case 'LaunchTemplateId':
          result.launchTemplateIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'LaunchTemplateName':
          result.launchTemplateNames.replace((const _i1.XmlBuiltListSerializer(
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
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLaunchTemplatesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeLaunchTemplatesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLaunchTemplatesRequest(
      :dryRun,
      :launchTemplateIds,
      :launchTemplateNames,
      :filters,
      :nextToken,
      :maxResults
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (launchTemplateIds != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchTemplateIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (launchTemplateNames != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchTemplateNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
