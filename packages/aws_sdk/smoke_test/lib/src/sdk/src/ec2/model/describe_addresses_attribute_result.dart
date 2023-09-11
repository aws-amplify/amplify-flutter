// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_addresses_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart';

part 'describe_addresses_attribute_result.g.dart';

abstract class DescribeAddressesAttributeResult
    with
        _i1.AWSEquatable<DescribeAddressesAttributeResult>
    implements
        Built<DescribeAddressesAttributeResult,
            DescribeAddressesAttributeResultBuilder> {
  factory DescribeAddressesAttributeResult({
    List<AddressAttribute>? addresses,
    String? nextToken,
  }) {
    return _$DescribeAddressesAttributeResult._(
      addresses: addresses == null ? null : _i2.BuiltList(addresses),
      nextToken: nextToken,
    );
  }

  factory DescribeAddressesAttributeResult.build(
          [void Function(DescribeAddressesAttributeResultBuilder) updates]) =
      _$DescribeAddressesAttributeResult;

  const DescribeAddressesAttributeResult._();

  /// Constructs a [DescribeAddressesAttributeResult] from a [payload] and [response].
  factory DescribeAddressesAttributeResult.fromResponse(
    DescribeAddressesAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeAddressesAttributeResult>>
      serializers = [DescribeAddressesAttributeResultEc2QuerySerializer()];

  /// Information about the IP addresses.
  _i2.BuiltList<AddressAttribute>? get addresses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        addresses,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAddressesAttributeResult')
          ..add(
            'addresses',
            addresses,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeAddressesAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeAddressesAttributeResult> {
  const DescribeAddressesAttributeResultEc2QuerySerializer()
      : super('DescribeAddressesAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesAttributeResult,
        _$DescribeAddressesAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'addressSet':
          result.addresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AddressAttribute)],
            ),
          ) as _i2.BuiltList<AddressAttribute>));
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
    DescribeAddressesAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAddressesAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAddressesAttributeResult(:addresses, :nextToken) = object;
    if (addresses != null) {
      result$
        ..add(const _i3.XmlElementName('AddressSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AddressAttribute)],
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
