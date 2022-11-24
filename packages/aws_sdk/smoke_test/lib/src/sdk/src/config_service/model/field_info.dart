// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.field_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'field_info.g.dart';

/// Details about the fields such as name of the field.
abstract class FieldInfo
    with _i1.AWSEquatable<FieldInfo>
    implements Built<FieldInfo, FieldInfoBuilder> {
  /// Details about the fields such as name of the field.
  factory FieldInfo({String? name}) {
    return _$FieldInfo._(name: name);
  }

  /// Details about the fields such as name of the field.
  factory FieldInfo.build([void Function(FieldInfoBuilder) updates]) =
      _$FieldInfo;

  const FieldInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    FieldInfoAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FieldInfoBuilder b) {}

  /// Name of the field.
  String? get name;
  @override
  List<Object?> get props => [name];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FieldInfo');
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class FieldInfoAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<FieldInfo> {
  const FieldInfoAwsJson11Serializer() : super('FieldInfo');

  @override
  Iterable<Type> get types => const [
        FieldInfo,
        _$FieldInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  FieldInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = (object as FieldInfo);
    final result = <Object?>[];
    if (payload.name != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
