// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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

  static const List<_i3.SmithySerializer> serializers = [
    QuotaSettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QuotaSettingsBuilder b) {}

  /// The target maximum number of requests that can be made in a given time period.
  int? get limit;

  /// The number of requests subtracted from the given limit in the initial time period.
  int? get offset;

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
    final helper = newBuiltValueToStringHelper('QuotaSettings');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'offset',
      offset,
    );
    helper.add(
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
      switch (key) {
        case 'limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'offset':
          if (value != null) {
            result.offset = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'period':
          if (value != null) {
            result.period = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.QuotaPeriodType),
            ) as _i2.QuotaPeriodType);
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
    final payload = (object as QuotaSettings);
    final result = <Object?>[];
    if (payload.limit != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.offset != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(
          payload.offset!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.period != null) {
      result
        ..add('period')
        ..add(serializers.serialize(
          payload.period!,
          specifiedType: const FullType(_i2.QuotaPeriodType),
        ));
    }
    return result;
  }
}
