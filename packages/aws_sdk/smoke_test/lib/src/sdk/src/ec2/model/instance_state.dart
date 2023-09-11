// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_name.dart';

part 'instance_state.g.dart';

/// Describes the current state of an instance.
abstract class InstanceState
    with _i1.AWSEquatable<InstanceState>
    implements Built<InstanceState, InstanceStateBuilder> {
  /// Describes the current state of an instance.
  factory InstanceState({
    int? code,
    InstanceStateName? name,
  }) {
    code ??= 0;
    return _$InstanceState._(
      code: code,
      name: name,
    );
  }

  /// Describes the current state of an instance.
  factory InstanceState.build([void Function(InstanceStateBuilder) updates]) =
      _$InstanceState;

  const InstanceState._();

  static const List<_i2.SmithySerializer<InstanceState>> serializers = [
    InstanceStateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceStateBuilder b) {
    b.code = 0;
  }

  /// The state of the instance as a 16-bit unsigned integer.
  ///
  /// The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values between 256 and 65,535. These numerical values are used for internal purposes and should be ignored.
  ///
  /// The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values between 0 and 255.
  ///
  /// The valid values for instance-state-code will all be in the range of the low byte and they are:
  ///
  /// *   `0` : `pending`
  ///
  /// *   `16` : `running`
  ///
  /// *   `32` : `shutting-down`
  ///
  /// *   `48` : `terminated`
  ///
  /// *   `64` : `stopping`
  ///
  /// *   `80` : `stopped`
  ///
  ///
  /// You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in decimal.
  int get code;

  /// The current state of the instance.
  InstanceStateName? get name;
  @override
  List<Object?> get props => [
        code,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceState')
      ..add(
        'code',
        code,
      )
      ..add(
        'name',
        name,
      );
    return helper.toString();
  }
}

class InstanceStateEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceState> {
  const InstanceStateEc2QuerySerializer() : super('InstanceState');

  @override
  Iterable<Type> get types => const [
        InstanceState,
        _$InstanceState,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceStateName),
          ) as InstanceStateName);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceStateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceState(:code, :name) = object;
    result$
      ..add(const _i2.XmlElementName('Code'))
      ..add(serializers.serialize(
        code,
        specifiedType: const FullType(int),
      ));
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(InstanceStateName),
        ));
    }
    return result$;
  }
}
