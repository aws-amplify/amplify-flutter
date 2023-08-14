// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart';

part 'associate_route_table_result.g.dart';

abstract class AssociateRouteTableResult
    with _i1.AWSEquatable<AssociateRouteTableResult>
    implements
        Built<AssociateRouteTableResult, AssociateRouteTableResultBuilder> {
  factory AssociateRouteTableResult({
    String? associationId,
    RouteTableAssociationState? associationState,
  }) {
    return _$AssociateRouteTableResult._(
      associationId: associationId,
      associationState: associationState,
    );
  }

  factory AssociateRouteTableResult.build(
          [void Function(AssociateRouteTableResultBuilder) updates]) =
      _$AssociateRouteTableResult;

  const AssociateRouteTableResult._();

  /// Constructs a [AssociateRouteTableResult] from a [payload] and [response].
  factory AssociateRouteTableResult.fromResponse(
    AssociateRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssociateRouteTableResult>>
      serializers = [AssociateRouteTableResultEc2QuerySerializer()];

  /// The route table association ID. This ID is required for disassociating the route table.
  String? get associationId;

  /// The state of the association.
  RouteTableAssociationState? get associationState;
  @override
  List<Object?> get props => [
        associationId,
        associationState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateRouteTableResult')
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'associationState',
        associationState,
      );
    return helper.toString();
  }
}

class AssociateRouteTableResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociateRouteTableResult> {
  const AssociateRouteTableResultEc2QuerySerializer()
      : super('AssociateRouteTableResult');

  @override
  Iterable<Type> get types => const [
        AssociateRouteTableResult,
        _$AssociateRouteTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'associationState':
          result.associationState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RouteTableAssociationState),
          ) as RouteTableAssociationState));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociateRouteTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateRouteTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateRouteTableResult(:associationId, :associationState) = object;
    if (associationId != null) {
      result$
        ..add(const _i2.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (associationState != null) {
      result$
        ..add(const _i2.XmlElementName('AssociationState'))
        ..add(serializers.serialize(
          associationState,
          specifiedType: const FullType(RouteTableAssociationState),
        ));
    }
    return result$;
  }
}
