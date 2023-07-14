// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.amplify_logging_constraints; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/user_log_level.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'amplify_logging_constraints.g.dart';

abstract class AmplifyLoggingConstraints
    with _i1.AWSEquatable<AmplifyLoggingConstraints>
    implements
        Built<AmplifyLoggingConstraints, AmplifyLoggingConstraintsBuilder> {
  factory AmplifyLoggingConstraints({
    _i2.LogLevel? defaultLogLevel,
    Map<_i2.Category, _i2.LogLevel>? categoryLogLevel,
    Map<String, _i3.UserLogLevel>? userLogLevel,
  }) {
    defaultLogLevel ??= _i2.LogLevel.error;
    return _$AmplifyLoggingConstraints._(
      defaultLogLevel: defaultLogLevel,
      categoryLogLevel:
          categoryLogLevel == null ? null : _i4.BuiltMap(categoryLogLevel),
      userLogLevel: userLogLevel == null ? null : _i4.BuiltMap(userLogLevel),
    );
  }

  factory AmplifyLoggingConstraints.build(
          [void Function(AmplifyLoggingConstraintsBuilder) updates]) =
      _$AmplifyLoggingConstraints;

  const AmplifyLoggingConstraints._();

  static const List<_i5.SmithySerializer<AmplifyLoggingConstraints>>
      serializers = [AmplifyLoggingConstraintsSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AmplifyLoggingConstraintsBuilder b) {
    b.defaultLogLevel = _i2.LogLevel.error;
  }

  _i2.LogLevel get defaultLogLevel;
  _i4.BuiltMap<_i2.Category, _i2.LogLevel>? get categoryLogLevel;
  _i4.BuiltMap<String, _i3.UserLogLevel>? get userLogLevel;
  @override
  List<Object?> get props => [
        defaultLogLevel,
        categoryLogLevel,
        userLogLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AmplifyLoggingConstraints')
      ..add(
        'defaultLogLevel',
        defaultLogLevel,
      )
      ..add(
        'categoryLogLevel',
        categoryLogLevel,
      )
      ..add(
        'userLogLevel',
        userLogLevel,
      );
    return helper.toString();
  }
}

class AmplifyLoggingConstraintsSerializer
    extends _i5.StructuredSmithySerializer<AmplifyLoggingConstraints> {
  const AmplifyLoggingConstraintsSerializer()
      : super('AmplifyLoggingConstraints');

  @override
  Iterable<Type> get types => const [
        AmplifyLoggingConstraints,
        _$AmplifyLoggingConstraints,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AmplifyLoggingConstraints deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AmplifyLoggingConstraintsBuilder();
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
              _i4.BuiltMap,
              [
                FullType(_i2.Category),
                FullType(_i2.LogLevel),
              ],
            ),
          ) as _i4.BuiltMap<_i2.Category, _i2.LogLevel>));
        case 'defaultLogLevel':
          result.defaultLogLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.LogLevel),
          ) as _i2.LogLevel);
        case 'userLogLevel':
          result.userLogLevel.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.UserLogLevel),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.UserLogLevel>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AmplifyLoggingConstraints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AmplifyLoggingConstraints(
      :categoryLogLevel,
      :defaultLogLevel,
      :userLogLevel
    ) = object;
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
            _i4.BuiltMap,
            [
              FullType(_i2.Category),
              FullType(_i2.LogLevel),
            ],
          ),
        ));
    }
    if (userLogLevel != null) {
      result$
        ..add('userLogLevel')
        ..add(serializers.serialize(
          userLogLevel,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.UserLogLevel),
            ],
          ),
        ));
    }
    return result$;
  }
}
