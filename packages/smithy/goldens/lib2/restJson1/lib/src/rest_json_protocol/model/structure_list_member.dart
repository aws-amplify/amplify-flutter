// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.structure_list_member; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'structure_list_member.g.dart';

abstract class StructureListMember
    with _i1.AWSEquatable<StructureListMember>
    implements Built<StructureListMember, StructureListMemberBuilder> {
  factory StructureListMember({
    String? a,
    String? b,
  }) {
    return _$StructureListMember._(
      a: a,
      b: b,
    );
  }

  factory StructureListMember.build(
          [void Function(StructureListMemberBuilder) updates]) =
      _$StructureListMember;

  const StructureListMember._();

  static const List<_i2.SmithySerializer> serializers = [
    StructureListMemberRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructureListMemberBuilder b) {}
  String? get a;
  String? get b;
  @override
  List<Object?> get props => [
        a,
        b,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StructureListMember');
    helper.add(
      'a',
      a,
    );
    helper.add(
      'b',
      b,
    );
    return helper.toString();
  }
}

class StructureListMemberRestJson1Serializer
    extends _i2.StructuredSmithySerializer<StructureListMember> {
  const StructureListMemberRestJson1Serializer() : super('StructureListMember');

  @override
  Iterable<Type> get types => const [
        StructureListMember,
        _$StructureListMember,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  StructureListMember deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureListMemberBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          if (value != null) {
            result.a = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'other':
          if (value != null) {
            result.b = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as StructureListMember);
    final result = <Object?>[];
    if (payload.a != null) {
      result
        ..add('value')
        ..add(serializers.serialize(
          payload.a!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.b != null) {
      result
        ..add('other')
        ..add(serializers.serialize(
          payload.b!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
