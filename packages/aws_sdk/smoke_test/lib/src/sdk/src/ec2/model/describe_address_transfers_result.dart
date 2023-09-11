// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_address_transfers_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';

part 'describe_address_transfers_result.g.dart';

abstract class DescribeAddressTransfersResult
    with
        _i1.AWSEquatable<DescribeAddressTransfersResult>
    implements
        Built<DescribeAddressTransfersResult,
            DescribeAddressTransfersResultBuilder> {
  factory DescribeAddressTransfersResult({
    List<AddressTransfer>? addressTransfers,
    String? nextToken,
  }) {
    return _$DescribeAddressTransfersResult._(
      addressTransfers:
          addressTransfers == null ? null : _i2.BuiltList(addressTransfers),
      nextToken: nextToken,
    );
  }

  factory DescribeAddressTransfersResult.build(
          [void Function(DescribeAddressTransfersResultBuilder) updates]) =
      _$DescribeAddressTransfersResult;

  const DescribeAddressTransfersResult._();

  /// Constructs a [DescribeAddressTransfersResult] from a [payload] and [response].
  factory DescribeAddressTransfersResult.fromResponse(
    DescribeAddressTransfersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeAddressTransfersResult>>
      serializers = [DescribeAddressTransfersResultEc2QuerySerializer()];

  /// The Elastic IP address transfer.
  _i2.BuiltList<AddressTransfer>? get addressTransfers;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        addressTransfers,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAddressTransfersResult')
      ..add(
        'addressTransfers',
        addressTransfers,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeAddressTransfersResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeAddressTransfersResult> {
  const DescribeAddressTransfersResultEc2QuerySerializer()
      : super('DescribeAddressTransfersResult');

  @override
  Iterable<Type> get types => const [
        DescribeAddressTransfersResult,
        _$DescribeAddressTransfersResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressTransfersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressTransfersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'addressTransferSet':
          result.addressTransfers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AddressTransfer)],
            ),
          ) as _i2.BuiltList<AddressTransfer>));
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
    DescribeAddressTransfersResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAddressTransfersResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAddressTransfersResult(:addressTransfers, :nextToken) =
        object;
    if (addressTransfers != null) {
      result$
        ..add(const _i3.XmlElementName('AddressTransferSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addressTransfers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AddressTransfer)],
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
