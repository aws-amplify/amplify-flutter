// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.search_local_gateway_routes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart';

part 'search_local_gateway_routes_result.g.dart';

abstract class SearchLocalGatewayRoutesResult
    with
        _i1.AWSEquatable<SearchLocalGatewayRoutesResult>
    implements
        Built<SearchLocalGatewayRoutesResult,
            SearchLocalGatewayRoutesResultBuilder> {
  factory SearchLocalGatewayRoutesResult({
    List<LocalGatewayRoute>? routes,
    String? nextToken,
  }) {
    return _$SearchLocalGatewayRoutesResult._(
      routes: routes == null ? null : _i2.BuiltList(routes),
      nextToken: nextToken,
    );
  }

  factory SearchLocalGatewayRoutesResult.build(
          [void Function(SearchLocalGatewayRoutesResultBuilder) updates]) =
      _$SearchLocalGatewayRoutesResult;

  const SearchLocalGatewayRoutesResult._();

  /// Constructs a [SearchLocalGatewayRoutesResult] from a [payload] and [response].
  factory SearchLocalGatewayRoutesResult.fromResponse(
    SearchLocalGatewayRoutesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<SearchLocalGatewayRoutesResult>>
      serializers = [SearchLocalGatewayRoutesResultEc2QuerySerializer()];

  /// Information about the routes.
  _i2.BuiltList<LocalGatewayRoute>? get routes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        routes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SearchLocalGatewayRoutesResult')
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

class SearchLocalGatewayRoutesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SearchLocalGatewayRoutesResult> {
  const SearchLocalGatewayRoutesResultEc2QuerySerializer()
      : super('SearchLocalGatewayRoutesResult');

  @override
  Iterable<Type> get types => const [
        SearchLocalGatewayRoutesResult,
        _$SearchLocalGatewayRoutesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchLocalGatewayRoutesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchLocalGatewayRoutesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'routeSet':
          result.routes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalGatewayRoute)],
            ),
          ) as _i2.BuiltList<LocalGatewayRoute>));
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
    SearchLocalGatewayRoutesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SearchLocalGatewayRoutesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SearchLocalGatewayRoutesResult(:routes, :nextToken) = object;
    if (routes != null) {
      result$
        ..add(const _i3.XmlElementName('RouteSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LocalGatewayRoute)],
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
