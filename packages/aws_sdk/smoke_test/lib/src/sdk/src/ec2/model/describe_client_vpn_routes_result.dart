// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_routes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route.dart';

part 'describe_client_vpn_routes_result.g.dart';

abstract class DescribeClientVpnRoutesResult
    with
        _i1.AWSEquatable<DescribeClientVpnRoutesResult>
    implements
        Built<DescribeClientVpnRoutesResult,
            DescribeClientVpnRoutesResultBuilder> {
  factory DescribeClientVpnRoutesResult({
    List<ClientVpnRoute>? routes,
    String? nextToken,
  }) {
    return _$DescribeClientVpnRoutesResult._(
      routes: routes == null ? null : _i2.BuiltList(routes),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnRoutesResult.build(
          [void Function(DescribeClientVpnRoutesResultBuilder) updates]) =
      _$DescribeClientVpnRoutesResult;

  const DescribeClientVpnRoutesResult._();

  /// Constructs a [DescribeClientVpnRoutesResult] from a [payload] and [response].
  factory DescribeClientVpnRoutesResult.fromResponse(
    DescribeClientVpnRoutesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeClientVpnRoutesResult>>
      serializers = [DescribeClientVpnRoutesResultEc2QuerySerializer()];

  /// Information about the Client VPN endpoint routes.
  _i2.BuiltList<ClientVpnRoute>? get routes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        routes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeClientVpnRoutesResult')
      ..add(
        'routes',
        routes,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeClientVpnRoutesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeClientVpnRoutesResult> {
  const DescribeClientVpnRoutesResultEc2QuerySerializer()
      : super('DescribeClientVpnRoutesResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnRoutesResult,
        _$DescribeClientVpnRoutesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnRoutesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnRoutesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'routes':
          result.routes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ClientVpnRoute)],
            ),
          ) as _i2.BuiltList<ClientVpnRoute>));
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
    DescribeClientVpnRoutesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeClientVpnRoutesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnRoutesResult(:routes, :nextToken) = object;
    if (routes != null) {
      result$
        ..add(const _i3.XmlElementName('Routes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ClientVpnRoute)],
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
