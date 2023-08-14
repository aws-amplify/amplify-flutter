// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart';

part 'create_route_table_result.g.dart';

abstract class CreateRouteTableResult
    with _i1.AWSEquatable<CreateRouteTableResult>
    implements Built<CreateRouteTableResult, CreateRouteTableResultBuilder> {
  factory CreateRouteTableResult({RouteTable? routeTable}) {
    return _$CreateRouteTableResult._(routeTable: routeTable);
  }

  factory CreateRouteTableResult.build(
          [void Function(CreateRouteTableResultBuilder) updates]) =
      _$CreateRouteTableResult;

  const CreateRouteTableResult._();

  /// Constructs a [CreateRouteTableResult] from a [payload] and [response].
  factory CreateRouteTableResult.fromResponse(
    CreateRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateRouteTableResult>> serializers =
      [CreateRouteTableResultEc2QuerySerializer()];

  /// Information about the route table.
  RouteTable? get routeTable;
  @override
  List<Object?> get props => [routeTable];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRouteTableResult')
      ..add(
        'routeTable',
        routeTable,
      );
    return helper.toString();
  }
}

class CreateRouteTableResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateRouteTableResult> {
  const CreateRouteTableResultEc2QuerySerializer()
      : super('CreateRouteTableResult');

  @override
  Iterable<Type> get types => const [
        CreateRouteTableResult,
        _$CreateRouteTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'routeTable':
          result.routeTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RouteTable),
          ) as RouteTable));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateRouteTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateRouteTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateRouteTableResult(:routeTable) = object;
    if (routeTable != null) {
      result$
        ..add(const _i2.XmlElementName('RouteTable'))
        ..add(serializers.serialize(
          routeTable,
          specifiedType: const FullType(RouteTable),
        ));
    }
    return result$;
  }
}
