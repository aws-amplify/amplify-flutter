// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<FieldInfo>> serializers = [
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
    final helper = newBuiltValueToStringHelper('FieldInfo')
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
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
    FieldInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final FieldInfo(:name) = object;
    if (name != null) {
      result$
        ..add('Name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
