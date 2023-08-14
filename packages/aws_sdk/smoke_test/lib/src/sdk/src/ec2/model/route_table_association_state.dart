// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.route_table_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state_code.dart';

part 'route_table_association_state.g.dart';

/// Describes the state of an association between a route table and a subnet or gateway.
abstract class RouteTableAssociationState
    with _i1.AWSEquatable<RouteTableAssociationState>
    implements
        Built<RouteTableAssociationState, RouteTableAssociationStateBuilder> {
  /// Describes the state of an association between a route table and a subnet or gateway.
  factory RouteTableAssociationState({
    RouteTableAssociationStateCode? state,
    String? statusMessage,
  }) {
    return _$RouteTableAssociationState._(
      state: state,
      statusMessage: statusMessage,
    );
  }

  /// Describes the state of an association between a route table and a subnet or gateway.
  factory RouteTableAssociationState.build(
          [void Function(RouteTableAssociationStateBuilder) updates]) =
      _$RouteTableAssociationState;

  const RouteTableAssociationState._();

  static const List<_i2.SmithySerializer<RouteTableAssociationState>>
      serializers = [RouteTableAssociationStateEc2QuerySerializer()];

  /// The state of the association.
  RouteTableAssociationStateCode? get state;

  /// The status message, if applicable.
  String? get statusMessage;
  @override
  List<Object?> get props => [
        state,
        statusMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RouteTableAssociationState')
      ..add(
        'state',
        state,
      )
      ..add(
        'statusMessage',
        statusMessage,
      );
    return helper.toString();
  }
}

class RouteTableAssociationStateEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RouteTableAssociationState> {
  const RouteTableAssociationStateEc2QuerySerializer()
      : super('RouteTableAssociationState');

  @override
  Iterable<Type> get types => const [
        RouteTableAssociationState,
        _$RouteTableAssociationState,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RouteTableAssociationState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteTableAssociationStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(RouteTableAssociationStateCode),
          ) as RouteTableAssociationStateCode);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
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
    RouteTableAssociationState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RouteTableAssociationStateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RouteTableAssociationState(:state, :statusMessage) = object;
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(RouteTableAssociationStateCode),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i2.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
