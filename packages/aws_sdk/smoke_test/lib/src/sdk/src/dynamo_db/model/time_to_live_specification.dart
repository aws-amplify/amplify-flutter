// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.time_to_live_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'time_to_live_specification.g.dart';

/// Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
abstract class TimeToLiveSpecification
    with _i1.AWSEquatable<TimeToLiveSpecification>
    implements Built<TimeToLiveSpecification, TimeToLiveSpecificationBuilder> {
  /// Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
  factory TimeToLiveSpecification({
    bool? enabled,
    required String attributeName,
  }) {
    enabled ??= false;
    return _$TimeToLiveSpecification._(
      enabled: enabled,
      attributeName: attributeName,
    );
  }

  /// Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
  factory TimeToLiveSpecification.build(
          [void Function(TimeToLiveSpecificationBuilder) updates]) =
      _$TimeToLiveSpecification;

  const TimeToLiveSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    TimeToLiveSpecificationAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimeToLiveSpecificationBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether TTL is to be enabled (true) or disabled (false) on the table.
  bool get enabled;

  /// The name of the TTL attribute used to store the expiration time for items in the table.
  String get attributeName;
  @override
  List<Object?> get props => [
        enabled,
        attributeName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TimeToLiveSpecification');
    helper.add(
      'enabled',
      enabled,
    );
    helper.add(
      'attributeName',
      attributeName,
    );
    return helper.toString();
  }
}

class TimeToLiveSpecificationAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TimeToLiveSpecification> {
  const TimeToLiveSpecificationAwsJson10Serializer()
      : super('TimeToLiveSpecification');

  @override
  Iterable<Type> get types => const [
        TimeToLiveSpecification,
        _$TimeToLiveSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TimeToLiveSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeToLiveSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as TimeToLiveSpecification);
    final result = <Object?>[
      'Enabled',
      serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ),
      'AttributeName',
      serializers.serialize(
        payload.attributeName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
