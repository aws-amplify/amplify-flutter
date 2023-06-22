// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.quota_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_period_type.dart'
    as _i2;

part 'quota_settings.g.dart';

/// Quotas configured for a usage plan.
abstract class QuotaSettings
    with _i1.AWSEquatable<QuotaSettings>
    implements Built<QuotaSettings, QuotaSettingsBuilder> {
  /// Quotas configured for a usage plan.
  factory QuotaSettings({
    int? limit,
    int? offset,
    _i2.QuotaPeriodType? period,
  }) {
    limit ??= 0;
    offset ??= 0;
    return _$QuotaSettings._(
      limit: limit,
      offset: offset,
      period: period,
    );
  }

  /// Quotas configured for a usage plan.
  factory QuotaSettings.build([void Function(QuotaSettingsBuilder) updates]) =
      _$QuotaSettings;

  const QuotaSettings._();

  static const List<_i3.SmithySerializer<QuotaSettings>> serializers = [
    QuotaSettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QuotaSettingsBuilder b) {
    b.limit = 0;
    b.offset = 0;
  }

  /// The target maximum number of requests that can be made in a given time period.
  int get limit;

  /// The number of requests subtracted from the given limit in the initial time period.
  int get offset;

  /// The time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".
  _i2.QuotaPeriodType? get period;
  @override
  List<Object?> get props => [
        limit,
        offset,
        period,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QuotaSettings')
      ..add(
        'limit',
        limit,
      )
      ..add(
        'offset',
        offset,
      )
      ..add(
        'period',
        period,
      );
    return helper.toString();
  }
}

class QuotaSettingsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<QuotaSettings> {
  const QuotaSettingsRestJson1Serializer() : super('QuotaSettings');

  @override
  Iterable<Type> get types => const [
        QuotaSettings,
        _$QuotaSettings,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  QuotaSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuotaSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'offset':
          result.offset = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'period':
          result.period = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.QuotaPeriodType),
          ) as _i2.QuotaPeriodType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QuotaSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final QuotaSettings(:limit, :offset, :period) = object;
    result$.addAll([
      'limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
      'offset',
      serializers.serialize(
        offset,
        specifiedType: const FullType(int),
      ),
    ]);
    if (period != null) {
      result$
        ..add('period')
        ..add(serializers.serialize(
          period,
          specifiedType: const FullType(_i2.QuotaPeriodType),
        ));
    }
    return result$;
  }
}
