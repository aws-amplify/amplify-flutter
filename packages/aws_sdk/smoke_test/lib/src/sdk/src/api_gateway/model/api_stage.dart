// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.api_stage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart'
    as _i2;

part 'api_stage.g.dart';

/// API stage name of the associated API stage in a usage plan.
abstract class ApiStage
    with _i1.AWSEquatable<ApiStage>
    implements Built<ApiStage, ApiStageBuilder> {
  /// API stage name of the associated API stage in a usage plan.
  factory ApiStage({
    String? apiId,
    String? stage,
    Map<String, _i2.ThrottleSettings>? throttle,
  }) {
    return _$ApiStage._(
      apiId: apiId,
      stage: stage,
      throttle: throttle == null ? null : _i3.BuiltMap(throttle),
    );
  }

  /// API stage name of the associated API stage in a usage plan.
  factory ApiStage.build([void Function(ApiStageBuilder) updates]) = _$ApiStage;

  const ApiStage._();

  static const List<_i4.SmithySerializer<ApiStage>> serializers = [
    ApiStageRestJson1Serializer()
  ];

  /// API Id of the associated API stage in a usage plan.
  String? get apiId;

  /// API stage name of the associated API stage in a usage plan.
  String? get stage;

  /// Map containing method level throttling information for API stage in a usage plan.
  _i3.BuiltMap<String, _i2.ThrottleSettings>? get throttle;
  @override
  List<Object?> get props => [
        apiId,
        stage,
        throttle,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiStage')
      ..add(
        'apiId',
        apiId,
      )
      ..add(
        'stage',
        stage,
      )
      ..add(
        'throttle',
        throttle,
      );
    return helper.toString();
  }
}

class ApiStageRestJson1Serializer
    extends _i4.StructuredSmithySerializer<ApiStage> {
  const ApiStageRestJson1Serializer() : super('ApiStage');

  @override
  Iterable<Type> get types => const [
        ApiStage,
        _$ApiStage,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ApiStage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiStageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiId':
          result.apiId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stage':
          result.stage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'throttle':
          result.throttle.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.ThrottleSettings),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.ThrottleSettings>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ApiStage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ApiStage(:apiId, :stage, :throttle) = object;
    if (apiId != null) {
      result$
        ..add('apiId')
        ..add(serializers.serialize(
          apiId,
          specifiedType: const FullType(String),
        ));
    }
    if (stage != null) {
      result$
        ..add('stage')
        ..add(serializers.serialize(
          stage,
          specifiedType: const FullType(String),
        ));
    }
    if (throttle != null) {
      result$
        ..add('throttle')
        ..add(serializers.serialize(
          throttle,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.ThrottleSettings),
            ],
          ),
        ));
    }
    return result$;
  }
}
