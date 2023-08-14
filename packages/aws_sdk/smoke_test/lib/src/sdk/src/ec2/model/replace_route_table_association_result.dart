// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_route_table_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart';

part 'replace_route_table_association_result.g.dart';

abstract class ReplaceRouteTableAssociationResult
    with
        _i1.AWSEquatable<ReplaceRouteTableAssociationResult>
    implements
        Built<ReplaceRouteTableAssociationResult,
            ReplaceRouteTableAssociationResultBuilder> {
  factory ReplaceRouteTableAssociationResult({
    String? newAssociationId,
    RouteTableAssociationState? associationState,
  }) {
    return _$ReplaceRouteTableAssociationResult._(
      newAssociationId: newAssociationId,
      associationState: associationState,
    );
  }

  factory ReplaceRouteTableAssociationResult.build(
          [void Function(ReplaceRouteTableAssociationResultBuilder) updates]) =
      _$ReplaceRouteTableAssociationResult;

  const ReplaceRouteTableAssociationResult._();

  /// Constructs a [ReplaceRouteTableAssociationResult] from a [payload] and [response].
  factory ReplaceRouteTableAssociationResult.fromResponse(
    ReplaceRouteTableAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ReplaceRouteTableAssociationResult>>
      serializers = [ReplaceRouteTableAssociationResultEc2QuerySerializer()];

  /// The ID of the new association.
  String? get newAssociationId;

  /// The state of the association.
  RouteTableAssociationState? get associationState;
  @override
  List<Object?> get props => [
        newAssociationId,
        associationState,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceRouteTableAssociationResult')
          ..add(
            'newAssociationId',
            newAssociationId,
          )
          ..add(
            'associationState',
            associationState,
          );
    return helper.toString();
  }
}

class ReplaceRouteTableAssociationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReplaceRouteTableAssociationResult> {
  const ReplaceRouteTableAssociationResultEc2QuerySerializer()
      : super('ReplaceRouteTableAssociationResult');

  @override
  Iterable<Type> get types => const [
        ReplaceRouteTableAssociationResult,
        _$ReplaceRouteTableAssociationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceRouteTableAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceRouteTableAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'newAssociationId':
          result.newAssociationId = (serializers.deserialize(
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
    ReplaceRouteTableAssociationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplaceRouteTableAssociationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceRouteTableAssociationResult(
      :newAssociationId,
      :associationState
    ) = object;
    if (newAssociationId != null) {
      result$
        ..add(const _i2.XmlElementName('NewAssociationId'))
        ..add(serializers.serialize(
          newAssociationId,
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
