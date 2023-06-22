// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.stage_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stage_key.g.dart';

/// A reference to a unique stage identified in the format `{restApiId}/{stage}`.
abstract class StageKey
    with _i1.AWSEquatable<StageKey>
    implements Built<StageKey, StageKeyBuilder> {
  /// A reference to a unique stage identified in the format `{restApiId}/{stage}`.
  factory StageKey({
    String? restApiId,
    String? stageName,
  }) {
    return _$StageKey._(
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// A reference to a unique stage identified in the format `{restApiId}/{stage}`.
  factory StageKey.build([void Function(StageKeyBuilder) updates]) = _$StageKey;

  const StageKey._();

  static const List<_i2.SmithySerializer<StageKey>> serializers = [
    StageKeyRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StageKeyBuilder b) {}

  /// The string identifier of the associated RestApi.
  String? get restApiId;

  /// The stage name associated with the stage key.
  String? get stageName;
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StageKey')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'stageName',
        stageName,
      );
    return helper.toString();
  }
}

class StageKeyRestJson1Serializer
    extends _i2.StructuredSmithySerializer<StageKey> {
  const StageKeyRestJson1Serializer() : super('StageKey');

  @override
  Iterable<Type> get types => const [
        StageKey,
        _$StageKey,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  StageKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StageKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'restApiId':
          result.restApiId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageName':
          result.stageName = (serializers.deserialize(
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
    StageKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StageKey(:restApiId, :stageName) = object;
    if (restApiId != null) {
      result$
        ..add('restApiId')
        ..add(serializers.serialize(
          restApiId,
          specifiedType: const FullType(String),
        ));
    }
    if (stageName != null) {
      result$
        ..add('stageName')
        ..add(serializers.serialize(
          stageName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
