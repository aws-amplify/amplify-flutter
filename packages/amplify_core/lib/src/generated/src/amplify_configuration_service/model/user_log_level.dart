// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.user_log_level; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_log_level.g.dart';

abstract class UserLogLevel
    with _i1.AWSEquatable<UserLogLevel>
    implements Built<UserLogLevel, UserLogLevelBuilder> {
  factory UserLogLevel({
    _i2.LogLevel? defaultLogLevel,
    Map<_i2.Category, _i2.LogLevel>? categoryLogLevel,
  }) {
    defaultLogLevel ??= _i2.LogLevel.error;
    return _$UserLogLevel._(
      defaultLogLevel: defaultLogLevel,
      categoryLogLevel:
          categoryLogLevel == null ? null : _i3.BuiltMap(categoryLogLevel),
    );
  }

  factory UserLogLevel.build([void Function(UserLogLevelBuilder) updates]) =
      _$UserLogLevel;

  const UserLogLevel._();

  static const List<_i4.SmithySerializer<UserLogLevel>> serializers = [
    UserLogLevelSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserLogLevelBuilder b) {
    b.defaultLogLevel = _i2.LogLevel.error;
  }

  _i2.LogLevel get defaultLogLevel;
  _i3.BuiltMap<_i2.Category, _i2.LogLevel>? get categoryLogLevel;
  @override
  List<Object?> get props => [
        defaultLogLevel,
        categoryLogLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserLogLevel')
      ..add(
        'defaultLogLevel',
        defaultLogLevel,
      )
      ..add(
        'categoryLogLevel',
        categoryLogLevel,
      );
    return helper.toString();
  }
}

class UserLogLevelSerializer
    extends _i4.StructuredSmithySerializer<UserLogLevel> {
  const UserLogLevelSerializer() : super('UserLogLevel');

  @override
  Iterable<Type> get types => const [
        UserLogLevel,
        _$UserLogLevel,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  UserLogLevel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserLogLevelBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'categoryLogLevel':
          result.categoryLogLevel.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(_i2.Category),
                FullType(_i2.LogLevel),
              ],
            ),
          ) as _i3.BuiltMap<_i2.Category, _i2.LogLevel>));
        case 'defaultLogLevel':
          result.defaultLogLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.LogLevel),
          ) as _i2.LogLevel);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UserLogLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UserLogLevel(:categoryLogLevel, :defaultLogLevel) = object;
    result$.addAll([
      'defaultLogLevel',
      serializers.serialize(
        defaultLogLevel,
        specifiedType: const FullType(_i2.LogLevel),
      ),
    ]);
    if (categoryLogLevel != null) {
      result$
        ..add('categoryLogLevel')
        ..add(serializers.serialize(
          categoryLogLevel,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(_i2.Category),
              FullType(_i2.LogLevel),
            ],
          ),
        ));
    }
    return result$;
  }
}
