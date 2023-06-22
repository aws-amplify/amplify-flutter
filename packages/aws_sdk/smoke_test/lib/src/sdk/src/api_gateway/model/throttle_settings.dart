// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.throttle_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'throttle_settings.g.dart';

/// The API request rate limits.
abstract class ThrottleSettings
    with _i1.AWSEquatable<ThrottleSettings>
    implements Built<ThrottleSettings, ThrottleSettingsBuilder> {
  /// The API request rate limits.
  factory ThrottleSettings({
    int? burstLimit,
    double? rateLimit,
  }) {
    burstLimit ??= 0;
    rateLimit ??= 0;
    return _$ThrottleSettings._(
      burstLimit: burstLimit,
      rateLimit: rateLimit,
    );
  }

  /// The API request rate limits.
  factory ThrottleSettings.build(
      [void Function(ThrottleSettingsBuilder) updates]) = _$ThrottleSettings;

  const ThrottleSettings._();

  static const List<_i2.SmithySerializer<ThrottleSettings>> serializers = [
    ThrottleSettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ThrottleSettingsBuilder b) {
    b.burstLimit = 0;
    b.rateLimit = 0;
  }

  /// The API target request burst rate limit. This allows more requests through for a period of time than the target rate limit.
  int get burstLimit;

  /// The API target request rate limit.
  double get rateLimit;
  @override
  List<Object?> get props => [
        burstLimit,
        rateLimit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ThrottleSettings')
      ..add(
        'burstLimit',
        burstLimit,
      )
      ..add(
        'rateLimit',
        rateLimit,
      );
    return helper.toString();
  }
}

class ThrottleSettingsRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ThrottleSettings> {
  const ThrottleSettingsRestJson1Serializer() : super('ThrottleSettings');

  @override
  Iterable<Type> get types => const [
        ThrottleSettings,
        _$ThrottleSettings,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ThrottleSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThrottleSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'burstLimit':
          result.burstLimit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'rateLimit':
          result.rateLimit = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ThrottleSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ThrottleSettings(:burstLimit, :rateLimit) = object;
    result$.addAll([
      'burstLimit',
      serializers.serialize(
        burstLimit,
        specifiedType: const FullType(int),
      ),
      'rateLimit',
      serializers.serialize(
        rateLimit,
        specifiedType: const FullType(double),
      ),
    ]);
    return result$;
  }
}
