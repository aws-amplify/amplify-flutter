// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_transit_gateway_prefix_list_references_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart';

part 'get_transit_gateway_prefix_list_references_result.g.dart';

abstract class GetTransitGatewayPrefixListReferencesResult
    with
        _i1.AWSEquatable<GetTransitGatewayPrefixListReferencesResult>
    implements
        Built<GetTransitGatewayPrefixListReferencesResult,
            GetTransitGatewayPrefixListReferencesResultBuilder> {
  factory GetTransitGatewayPrefixListReferencesResult({
    List<TransitGatewayPrefixListReference>? transitGatewayPrefixListReferences,
    String? nextToken,
  }) {
    return _$GetTransitGatewayPrefixListReferencesResult._(
      transitGatewayPrefixListReferences:
          transitGatewayPrefixListReferences == null
              ? null
              : _i2.BuiltList(transitGatewayPrefixListReferences),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayPrefixListReferencesResult.build(
      [void Function(GetTransitGatewayPrefixListReferencesResultBuilder)
          updates]) = _$GetTransitGatewayPrefixListReferencesResult;

  const GetTransitGatewayPrefixListReferencesResult._();

  /// Constructs a [GetTransitGatewayPrefixListReferencesResult] from a [payload] and [response].
  factory GetTransitGatewayPrefixListReferencesResult.fromResponse(
    GetTransitGatewayPrefixListReferencesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetTransitGatewayPrefixListReferencesResult>>
      serializers = [
    GetTransitGatewayPrefixListReferencesResultEc2QuerySerializer()
  ];

  /// Information about the prefix list references.
  _i2.BuiltList<TransitGatewayPrefixListReference>?
      get transitGatewayPrefixListReferences;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayPrefixListReferences,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayPrefixListReferencesResult')
      ..add(
        'transitGatewayPrefixListReferences',
        transitGatewayPrefixListReferences,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetTransitGatewayPrefixListReferencesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<GetTransitGatewayPrefixListReferencesResult> {
  const GetTransitGatewayPrefixListReferencesResultEc2QuerySerializer()
      : super('GetTransitGatewayPrefixListReferencesResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayPrefixListReferencesResult,
        _$GetTransitGatewayPrefixListReferencesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayPrefixListReferencesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayPrefixListReferencesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPrefixListReferenceSet':
          result.transitGatewayPrefixListReferences
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayPrefixListReference)],
            ),
          ) as _i2.BuiltList<TransitGatewayPrefixListReference>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    GetTransitGatewayPrefixListReferencesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetTransitGatewayPrefixListReferencesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayPrefixListReferencesResult(
      :transitGatewayPrefixListReferences,
      :nextToken
    ) = object;
    if (transitGatewayPrefixListReferences != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayPrefixListReferenceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayPrefixListReferences,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayPrefixListReference)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
