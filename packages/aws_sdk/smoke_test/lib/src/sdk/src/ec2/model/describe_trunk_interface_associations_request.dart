// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_trunk_interface_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_trunk_interface_associations_request.g.dart';

abstract class DescribeTrunkInterfaceAssociationsRequest
    with
        _i1.HttpInput<DescribeTrunkInterfaceAssociationsRequest>,
        _i2.AWSEquatable<DescribeTrunkInterfaceAssociationsRequest>
    implements
        Built<DescribeTrunkInterfaceAssociationsRequest,
            DescribeTrunkInterfaceAssociationsRequestBuilder> {
  factory DescribeTrunkInterfaceAssociationsRequest({
    List<String>? associationIds,
    bool? dryRun,
    List<Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeTrunkInterfaceAssociationsRequest._(
      associationIds:
          associationIds == null ? null : _i3.BuiltList(associationIds),
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeTrunkInterfaceAssociationsRequest.build(
      [void Function(DescribeTrunkInterfaceAssociationsRequestBuilder)
          updates]) = _$DescribeTrunkInterfaceAssociationsRequest;

  const DescribeTrunkInterfaceAssociationsRequest._();

  factory DescribeTrunkInterfaceAssociationsRequest.fromRequest(
    DescribeTrunkInterfaceAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeTrunkInterfaceAssociationsRequest>>
      serializers = [
    DescribeTrunkInterfaceAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTrunkInterfaceAssociationsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The IDs of the associations.
  _i3.BuiltList<String>? get associationIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters.
  ///
  /// *   `gre-key` \- The ID of a trunk interface association.
  ///
  /// *   `interface-protocol` \- The interface protocol. Valid values are `VLAN` and `GRE`.
  _i3.BuiltList<Filter>? get filters;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;
  @override
  DescribeTrunkInterfaceAssociationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationIds,
        dryRun,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrunkInterfaceAssociationsRequest')
          ..add(
            'associationIds',
            associationIds,
          )
          ..add(
            'dryRun',
            dryRun,
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

class DescribeTrunkInterfaceAssociationsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeTrunkInterfaceAssociationsRequest> {
  const DescribeTrunkInterfaceAssociationsRequestEc2QuerySerializer()
      : super('DescribeTrunkInterfaceAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTrunkInterfaceAssociationsRequest,
        _$DescribeTrunkInterfaceAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrunkInterfaceAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrunkInterfaceAssociationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AssociationId':
          result.associationIds.replace((const _i1.XmlBuiltListSerializer(
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
    DescribeTrunkInterfaceAssociationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeTrunkInterfaceAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTrunkInterfaceAssociationsRequest(
      :associationIds,
      :dryRun,
      :filters,
      :nextToken,
      :maxResults
    ) = object;
    if (associationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associationIds,
          specifiedType: const FullType(
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
