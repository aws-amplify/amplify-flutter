// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? endDate,
    Map<String, List<List<_i2.Int64>>>? items,
    String? position,
    String? startDate,
    String? usagePlanId,
  }) {
    return _$Usage._(
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
      startDate: startDate,
      usagePlanId: usagePlanId,
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

  static const List<_i4.SmithySerializer> serializers = [
    UsageRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsageBuilder b) {}

  /// The ending date of the usage data.
  String? get endDate;

  /// The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, `{..., "values" : { "{api_key}" : \[ \[0, 100\], \[10, 90\], \[100, 10\]\]}`, where `{api_key}` stands for an API key value and the daily log entry is of the format `\[used quota, remaining quota\]`.
  _i3.BuiltListMultimap<String, _i3.BuiltList<_i2.Int64>>? get items;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The starting date of the usage data.
  String? get startDate;

  /// The plan Id associated with this usage data.
  String? get usagePlanId;
  @override
  List<Object?> get props => [
        endDate,
        items,
        position,
        startDate,
        usagePlanId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Usage');
    helper.add(
      'endDate',
      endDate,
    );
    helper.add(
      'items',
      items,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'startDate',
      startDate,
    );
    helper.add(
      'usagePlanId',
      usagePlanId,
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
      switch (key) {
        case 'endDate':
          if (value != null) {
            result.endDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'values':
          if (value != null) {
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
          }
          break;
        case 'position':
          if (value != null) {
            result.position = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'startDate':
          if (value != null) {
            result.startDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'usagePlanId':
          if (value != null) {
            result.usagePlanId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Usage);
    final result = <Object?>[];
    if (payload.endDate != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(
          payload.endDate!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.items != null) {
      result
        ..add('values')
        ..add(serializers.serialize(
          payload.items!,
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
    if (payload.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(
          payload.position!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.startDate != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(
          payload.startDate!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.usagePlanId != null) {
      result
        ..add('usagePlanId')
        ..add(serializers.serialize(
          payload.usagePlanId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
