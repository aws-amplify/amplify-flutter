// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_cidr_block_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state_code.dart';

part 'subnet_cidr_block_state.g.dart';

/// Describes the state of a CIDR block.
abstract class SubnetCidrBlockState
    with _i1.AWSEquatable<SubnetCidrBlockState>
    implements Built<SubnetCidrBlockState, SubnetCidrBlockStateBuilder> {
  /// Describes the state of a CIDR block.
  factory SubnetCidrBlockState({
    SubnetCidrBlockStateCode? state,
    String? statusMessage,
  }) {
    return _$SubnetCidrBlockState._(
      state: state,
      statusMessage: statusMessage,
    );
  }

  /// Describes the state of a CIDR block.
  factory SubnetCidrBlockState.build(
          [void Function(SubnetCidrBlockStateBuilder) updates]) =
      _$SubnetCidrBlockState;

  const SubnetCidrBlockState._();

  static const List<_i2.SmithySerializer<SubnetCidrBlockState>> serializers = [
    SubnetCidrBlockStateEc2QuerySerializer()
  ];

  /// The state of a CIDR block.
  SubnetCidrBlockStateCode? get state;

  /// A message about the status of the CIDR block, if applicable.
  String? get statusMessage;
  @override
  List<Object?> get props => [
        state,
        statusMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetCidrBlockState')
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

class SubnetCidrBlockStateEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SubnetCidrBlockState> {
  const SubnetCidrBlockStateEc2QuerySerializer()
      : super('SubnetCidrBlockState');

  @override
  Iterable<Type> get types => const [
        SubnetCidrBlockState,
        _$SubnetCidrBlockState,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetCidrBlockState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetCidrBlockStateBuilder();
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
            specifiedType: const FullType(SubnetCidrBlockStateCode),
          ) as SubnetCidrBlockStateCode);
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
    SubnetCidrBlockState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SubnetCidrBlockStateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SubnetCidrBlockState(:state, :statusMessage) = object;
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(SubnetCidrBlockStateCode),
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
