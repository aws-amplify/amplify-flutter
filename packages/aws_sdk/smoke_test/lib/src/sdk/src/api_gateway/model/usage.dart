// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.usage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'usage.g.dart';

/// Represents the usage data of a usage plan.
abstract class Usage
    with _i1.AWSEquatable<Usage>
    implements Built<Usage, UsageBuilder> {
  /// Represents the usage data of a usage plan.
  factory Usage({
    String? usagePlanId,
    String? startDate,
    String? endDate,
    Map<String, List<List<_i2.Int64>>>? items,
    String? position,
  }) {
    return _$Usage._(
      usagePlanId: usagePlanId,
      startDate: startDate,
      endDate: endDate,
      items: items == null
          ? null
          : _i3.BuiltListMultimap(items.map((
              key,
              value,
            ) =>
              MapEntry(
                key,
                value.map((el) => _i3.BuiltList(el)),
              ))),
      position: position,
    );
  }

  /// Represents the usage data of a usage plan.
  factory Usage.build([void Function(UsageBuilder) updates]) = _$Usage;

  const Usage._();

  /// Constructs a [Usage] from a [payload] and [response].
  factory Usage.fromResponse(
    Usage payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<Usage>> serializers = [
    UsageRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsageBuilder b) {}

  /// The plan Id associated with this usage data.
  String? get usagePlanId;

  /// The starting date of the usage data.
  String? get startDate;

  /// The ending date of the usage data.
  String? get endDate;

  /// The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, `{..., "values" : { "{api_key}" : \[ \[0, 100\], \[10, 90\], \[100, 10\]\]}`, where `{api_key}` stands for an API key value and the daily log entry is of the format `\[used quota, remaining quota\]`.
  _i3.BuiltListMultimap<String, _i3.BuiltList<_i2.Int64>>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        usagePlanId,
        startDate,
        endDate,
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Usage')
      ..add(
        'usagePlanId',
        usagePlanId,
      )
      ..add(
        'startDate',
        startDate,
      )
      ..add(
        'endDate',
        endDate,
      )
      ..add(
        'items',
        items,
      )
      ..add(
        'position',
        position,
      );
    return helper.toString();
  }
}

class UsageRestJson1Serializer extends _i4.StructuredSmithySerializer<Usage> {
  const UsageRestJson1Serializer() : super('Usage');

  @override
  Iterable<Type> get types => const [
        Usage,
        _$Usage,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Usage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'endDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'values':
          result.items.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltListMultimap,
              [
                FullType(String),
                FullType(
                  _i3.BuiltList,
                  [FullType(_i2.Int64)],
                ),
              ],
            ),
          ) as _i3.BuiltListMultimap<String, _i3.BuiltList<_i2.Int64>>));
        case 'position':
          result.position = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'startDate':
          result.startDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usagePlanId':
          result.usagePlanId = (serializers.deserialize(
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
    Usage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Usage(:endDate, :items, :position, :startDate, :usagePlanId) = object;
    if (endDate != null) {
      result$
        ..add('endDate')
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType(String),
        ));
    }
    if (items != null) {
      result$
        ..add('values')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltListMultimap,
            [
              FullType(String),
              FullType(
                _i3.BuiltList,
                [FullType(_i2.Int64)],
              ),
            ],
          ),
        ));
    }
    if (position != null) {
      result$
        ..add('position')
        ..add(serializers.serialize(
          position,
          specifiedType: const FullType(String),
        ));
    }
    if (startDate != null) {
      result$
        ..add('startDate')
        ..add(serializers.serialize(
          startDate,
          specifiedType: const FullType(String),
        ));
    }
    if (usagePlanId != null) {
      result$
        ..add('usagePlanId')
        ..add(serializers.serialize(
          usagePlanId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
