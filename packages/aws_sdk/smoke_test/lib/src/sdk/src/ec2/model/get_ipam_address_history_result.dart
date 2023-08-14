// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_address_history_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_record.dart';

part 'get_ipam_address_history_result.g.dart';

abstract class GetIpamAddressHistoryResult
    with _i1.AWSEquatable<GetIpamAddressHistoryResult>
    implements
        Built<GetIpamAddressHistoryResult, GetIpamAddressHistoryResultBuilder> {
  factory GetIpamAddressHistoryResult({
    List<IpamAddressHistoryRecord>? historyRecords,
    String? nextToken,
  }) {
    return _$GetIpamAddressHistoryResult._(
      historyRecords:
          historyRecords == null ? null : _i2.BuiltList(historyRecords),
      nextToken: nextToken,
    );
  }

  factory GetIpamAddressHistoryResult.build(
          [void Function(GetIpamAddressHistoryResultBuilder) updates]) =
      _$GetIpamAddressHistoryResult;

  const GetIpamAddressHistoryResult._();

  /// Constructs a [GetIpamAddressHistoryResult] from a [payload] and [response].
  factory GetIpamAddressHistoryResult.fromResponse(
    GetIpamAddressHistoryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetIpamAddressHistoryResult>>
      serializers = [GetIpamAddressHistoryResultEc2QuerySerializer()];

  /// A historical record for a CIDR within an IPAM scope. If the CIDR is associated with an EC2 instance, you will see an object in the response for the instance and one for the network interface.
  _i2.BuiltList<IpamAddressHistoryRecord>? get historyRecords;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        historyRecords,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamAddressHistoryResult')
      ..add(
        'historyRecords',
        historyRecords,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetIpamAddressHistoryResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetIpamAddressHistoryResult> {
  const GetIpamAddressHistoryResultEc2QuerySerializer()
      : super('GetIpamAddressHistoryResult');

  @override
  Iterable<Type> get types => const [
        GetIpamAddressHistoryResult,
        _$GetIpamAddressHistoryResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamAddressHistoryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamAddressHistoryResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'historyRecordSet':
          result.historyRecords.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamAddressHistoryRecord)],
            ),
          ) as _i2.BuiltList<IpamAddressHistoryRecord>));
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
    GetIpamAddressHistoryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetIpamAddressHistoryResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamAddressHistoryResult(:historyRecords, :nextToken) = object;
    if (historyRecords != null) {
      result$
        ..add(const _i3.XmlElementName('HistoryRecordSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          historyRecords,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IpamAddressHistoryRecord)],
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
