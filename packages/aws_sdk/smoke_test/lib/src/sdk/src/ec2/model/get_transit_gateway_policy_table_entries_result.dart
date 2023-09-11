// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_transit_gateway_policy_table_entries_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_entry.dart';

part 'get_transit_gateway_policy_table_entries_result.g.dart';

abstract class GetTransitGatewayPolicyTableEntriesResult
    with
        _i1.AWSEquatable<GetTransitGatewayPolicyTableEntriesResult>
    implements
        Built<GetTransitGatewayPolicyTableEntriesResult,
            GetTransitGatewayPolicyTableEntriesResultBuilder> {
  factory GetTransitGatewayPolicyTableEntriesResult(
      {List<TransitGatewayPolicyTableEntry>?
          transitGatewayPolicyTableEntries}) {
    return _$GetTransitGatewayPolicyTableEntriesResult._(
        transitGatewayPolicyTableEntries:
            transitGatewayPolicyTableEntries == null
                ? null
                : _i2.BuiltList(transitGatewayPolicyTableEntries));
  }

  factory GetTransitGatewayPolicyTableEntriesResult.build(
      [void Function(GetTransitGatewayPolicyTableEntriesResultBuilder)
          updates]) = _$GetTransitGatewayPolicyTableEntriesResult;

  const GetTransitGatewayPolicyTableEntriesResult._();

  /// Constructs a [GetTransitGatewayPolicyTableEntriesResult] from a [payload] and [response].
  factory GetTransitGatewayPolicyTableEntriesResult.fromResponse(
    GetTransitGatewayPolicyTableEntriesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetTransitGatewayPolicyTableEntriesResult>>
      serializers = [
    GetTransitGatewayPolicyTableEntriesResultEc2QuerySerializer()
  ];

  /// The entries for the transit gateway policy table.
  _i2.BuiltList<TransitGatewayPolicyTableEntry>?
      get transitGatewayPolicyTableEntries;
  @override
  List<Object?> get props => [transitGatewayPolicyTableEntries];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetTransitGatewayPolicyTableEntriesResult')
          ..add(
            'transitGatewayPolicyTableEntries',
            transitGatewayPolicyTableEntries,
          );
    return helper.toString();
  }
}

class GetTransitGatewayPolicyTableEntriesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<GetTransitGatewayPolicyTableEntriesResult> {
  const GetTransitGatewayPolicyTableEntriesResultEc2QuerySerializer()
      : super('GetTransitGatewayPolicyTableEntriesResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayPolicyTableEntriesResult,
        _$GetTransitGatewayPolicyTableEntriesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayPolicyTableEntriesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayPolicyTableEntriesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPolicyTableEntries':
          result.transitGatewayPolicyTableEntries
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayPolicyTableEntry)],
            ),
          ) as _i2.BuiltList<TransitGatewayPolicyTableEntry>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTransitGatewayPolicyTableEntriesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetTransitGatewayPolicyTableEntriesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayPolicyTableEntriesResult(
      :transitGatewayPolicyTableEntries
    ) = object;
    if (transitGatewayPolicyTableEntries != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayPolicyTableEntries'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayPolicyTableEntries,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayPolicyTableEntry)],
          ),
        ));
    }
    return result$;
  }
}
