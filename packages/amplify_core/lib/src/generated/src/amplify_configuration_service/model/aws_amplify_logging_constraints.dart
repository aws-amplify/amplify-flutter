// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_amplify_logging_constraints; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_user_log_level.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'aws_amplify_logging_constraints.g.dart';

abstract class AWSAmplifyLoggingConstraints
    with
        _i1.AWSEquatable<AWSAmplifyLoggingConstraints>
    implements
        Built<AWSAmplifyLoggingConstraints,
            AWSAmplifyLoggingConstraintsBuilder> {
  factory AWSAmplifyLoggingConstraints({
    _i2.LogLevel? defaultLogLevel,
    Map<_i2.Category, _i2.LogLevel>? categoryLogLevel,
    Map<String, _i3.AWSUserLogLevel>? userLogLevel,
  }) {
    defaultLogLevel ??= _i2.LogLevel.error;
    categoryLogLevel ??= const {};
    userLogLevel ??= const {};
    return _$AWSAmplifyLoggingConstraints._(
      defaultLogLevel: defaultLogLevel,
      categoryLogLevel: _i4.BuiltMap(categoryLogLevel),
      userLogLevel: _i4.BuiltMap(userLogLevel),
    );
  }

  factory AWSAmplifyLoggingConstraints.build(
          [void Function(AWSAmplifyLoggingConstraintsBuilder) updates]) =
      _$AWSAmplifyLoggingConstraints;

  const AWSAmplifyLoggingConstraints._();

  static const List<_i5.SmithySerializer<AWSAmplifyLoggingConstraints>>
      serializers = [AWSAmplifyLoggingConstraintsSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAmplifyLoggingConstraintsBuilder b) {
    b
      ..defaultLogLevel = _i2.LogLevel.error
      ..categoryLogLevel.addAll(const {})
      ..userLogLevel.addAll(const {});
  }

  _i2.LogLevel get defaultLogLevel;
  _i4.BuiltMap<_i2.Category, _i2.LogLevel> get categoryLogLevel;
  _i4.BuiltMap<String, _i3.AWSUserLogLevel> get userLogLevel;
  @override
  List<Object?> get props => [
        defaultLogLevel,
        categoryLogLevel,
        userLogLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAmplifyLoggingConstraints')
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

class AWSAmplifyLoggingConstraintsSerializer
    extends _i5.StructuredSmithySerializer<AWSAmplifyLoggingConstraints> {
  const AWSAmplifyLoggingConstraintsSerializer()
      : super('AWSAmplifyLoggingConstraints');

  @override
  Iterable<Type> get types => const [
        AWSAmplifyLoggingConstraints,
        _$AWSAmplifyLoggingConstraints,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAmplifyLoggingConstraints deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAmplifyLoggingConstraintsBuilder();
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
                FullType(_i3.AWSUserLogLevel),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.AWSUserLogLevel>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAmplifyLoggingConstraints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAmplifyLoggingConstraints(
      :categoryLogLevel,
      :defaultLogLevel,
      :userLogLevel
    ) = object;
    result$.addAll([
      'categoryLogLevel',
      serializers.serialize(
        categoryLogLevel,
        specifiedType: const FullType(
          _i4.BuiltMap,
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
      'userLogLevel',
      serializers.serialize(
        userLogLevel,
        specifiedType: const FullType(
          _i4.BuiltMap,
          [
            FullType(String),
            FullType(_i3.AWSUserLogLevel),
          ],
        ),
      ),
    ]);
    return result$;
  }
}
