// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway.dart';

part 'describe_local_gateways_result.g.dart';

abstract class DescribeLocalGatewaysResult
    with _i1.AWSEquatable<DescribeLocalGatewaysResult>
    implements
        Built<DescribeLocalGatewaysResult, DescribeLocalGatewaysResultBuilder> {
  factory DescribeLocalGatewaysResult({
    List<LocalGateway>? localGateways,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewaysResult._(
      localGateways:
          localGateways == null ? null : _i2.BuiltList(localGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewaysResult.build(
          [void Function(DescribeLocalGatewaysResultBuilder) updates]) =
      _$DescribeLocalGatewaysResult;

  const DescribeLocalGatewaysResult._();

  /// Constructs a [DescribeLocalGatewaysResult] from a [payload] and [response].
  factory DescribeLocalGatewaysResult.fromResponse(
    DescribeLocalGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeLocalGatewaysResult>>
      serializers = [DescribeLocalGatewaysResultEc2QuerySerializer()];

  /// Information about the local gateways.
  _i2.BuiltList<LocalGateway>? get localGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLocalGatewaysResult')
      ..add(
        'localGateways',
        localGateways,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLocalGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeLocalGatewaysResult> {
  const DescribeLocalGatewaysResultEc2QuerySerializer()
      : super('DescribeLocalGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewaysResult,
        _$DescribeLocalGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewaySet':
          result.localGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalGateway)],
            ),
          ) as _i2.BuiltList<LocalGateway>));
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
    DescribeLocalGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeLocalGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewaysResult(:localGateways, :nextToken) = object;
    if (localGateways != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LocalGateway)],
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
