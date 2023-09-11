// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_dhcp_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart';

part 'describe_dhcp_options_result.g.dart';

abstract class DescribeDhcpOptionsResult
    with _i1.AWSEquatable<DescribeDhcpOptionsResult>
    implements
        Built<DescribeDhcpOptionsResult, DescribeDhcpOptionsResultBuilder> {
  factory DescribeDhcpOptionsResult({
    List<DhcpOptions>? dhcpOptions,
    String? nextToken,
  }) {
    return _$DescribeDhcpOptionsResult._(
      dhcpOptions: dhcpOptions == null ? null : _i2.BuiltList(dhcpOptions),
      nextToken: nextToken,
    );
  }

  factory DescribeDhcpOptionsResult.build(
          [void Function(DescribeDhcpOptionsResultBuilder) updates]) =
      _$DescribeDhcpOptionsResult;

  const DescribeDhcpOptionsResult._();

  /// Constructs a [DescribeDhcpOptionsResult] from a [payload] and [response].
  factory DescribeDhcpOptionsResult.fromResponse(
    DescribeDhcpOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeDhcpOptionsResult>>
      serializers = [DescribeDhcpOptionsResultEc2QuerySerializer()];

  /// Information about one or more DHCP options sets.
  _i2.BuiltList<DhcpOptions>? get dhcpOptions;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        dhcpOptions,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeDhcpOptionsResult')
      ..add(
        'dhcpOptions',
        dhcpOptions,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeDhcpOptionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeDhcpOptionsResult> {
  const DescribeDhcpOptionsResultEc2QuerySerializer()
      : super('DescribeDhcpOptionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeDhcpOptionsResult,
        _$DescribeDhcpOptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeDhcpOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDhcpOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dhcpOptionsSet':
          result.dhcpOptions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DhcpOptions)],
            ),
          ) as _i2.BuiltList<DhcpOptions>));
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
    DescribeDhcpOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeDhcpOptionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeDhcpOptionsResult(:dhcpOptions, :nextToken) = object;
    if (dhcpOptions != null) {
      result$
        ..add(const _i3.XmlElementName('DhcpOptionsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dhcpOptions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DhcpOptions)],
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
