// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_user_log_level; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_user_log_level.g.dart';

abstract class AWSUserLogLevel
    with _i1.AWSEquatable<AWSUserLogLevel>
    implements Built<AWSUserLogLevel, AWSUserLogLevelBuilder> {
  factory AWSUserLogLevel({
    _i2.LogLevel? defaultLogLevel,
    Map<_i2.Category, _i2.LogLevel>? categoryLogLevel,
  }) {
    defaultLogLevel ??= _i2.LogLevel.error;
    categoryLogLevel ??= const {};
    return _$AWSUserLogLevel._(
      defaultLogLevel: defaultLogLevel,
      categoryLogLevel: _i3.BuiltMap(categoryLogLevel),
    );
  }

  factory AWSUserLogLevel.build(
      [void Function(AWSUserLogLevelBuilder) updates]) = _$AWSUserLogLevel;

  const AWSUserLogLevel._();

  static const List<_i4.SmithySerializer<AWSUserLogLevel>> serializers = [
    AWSUserLogLevelSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSUserLogLevelBuilder b) {
    b
      ..defaultLogLevel = _i2.LogLevel.error
      ..categoryLogLevel.addAll(const {});
  }

  _i2.LogLevel get defaultLogLevel;
  _i3.BuiltMap<_i2.Category, _i2.LogLevel> get categoryLogLevel;
  @override
  List<Object?> get props => [
        defaultLogLevel,
        categoryLogLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSUserLogLevel')
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

class AWSUserLogLevelSerializer
    extends _i4.StructuredSmithySerializer<AWSUserLogLevel> {
  const AWSUserLogLevelSerializer() : super('AWSUserLogLevel');

  @override
  Iterable<Type> get types => const [
        AWSUserLogLevel,
        _$AWSUserLogLevel,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSUserLogLevel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSUserLogLevelBuilder();
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
    AWSUserLogLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSUserLogLevel(:categoryLogLevel, :defaultLogLevel) = object;
    result$.addAll([
      'categoryLogLevel',
      serializers.serialize(
        categoryLogLevel,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(_i2.Category),
            FullType(_i2.LogLevel),
          ],
        ),
      ),
      'defaultLogLevel',
      serializers.serialize(
        defaultLogLevel,
        specifiedType: const FullType(_i2.LogLevel),
      ),
    ]);
    return result$;
  }
}
