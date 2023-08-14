// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/address.dart';

part 'describe_addresses_result.g.dart';

abstract class DescribeAddressesResult
    with _i1.AWSEquatable<DescribeAddressesResult>
    implements Built<DescribeAddressesResult, DescribeAddressesResultBuilder> {
  factory DescribeAddressesResult({List<Address>? addresses}) {
    return _$DescribeAddressesResult._(
        addresses: addresses == null ? null : _i2.BuiltList(addresses));
  }

  factory DescribeAddressesResult.build(
          [void Function(DescribeAddressesResultBuilder) updates]) =
      _$DescribeAddressesResult;

  const DescribeAddressesResult._();

  /// Constructs a [DescribeAddressesResult] from a [payload] and [response].
  factory DescribeAddressesResult.fromResponse(
    DescribeAddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeAddressesResult>> serializers =
      [DescribeAddressesResultEc2QuerySerializer()];

  /// Information about the Elastic IP addresses.
  _i2.BuiltList<Address>? get addresses;
  @override
  List<Object?> get props => [addresses];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAddressesResult')
      ..add(
        'addresses',
        addresses,
      );
    return helper.toString();
  }
}

class DescribeAddressesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeAddressesResult> {
  const DescribeAddressesResultEc2QuerySerializer()
      : super('DescribeAddressesResult');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesResult,
        _$DescribeAddressesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'addressesSet':
          result.addresses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Address)],
            ),
          ) as _i2.BuiltList<Address>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAddressesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAddressesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAddressesResult(:addresses) = object;
    if (addresses != null) {
      result$
        ..add(const _i3.XmlElementName('AddressesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Address)],
          ),
        ));
    }
    return result$;
  }
}
