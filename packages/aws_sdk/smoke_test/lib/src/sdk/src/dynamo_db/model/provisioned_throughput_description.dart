// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.provisioned_throughput_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'provisioned_throughput_description.g.dart';

/// Represents the provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.
abstract class ProvisionedThroughputDescription
    with
        _i1.AWSEquatable<ProvisionedThroughputDescription>
    implements
        Built<ProvisionedThroughputDescription,
            ProvisionedThroughputDescriptionBuilder> {
  /// Represents the provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.
  factory ProvisionedThroughputDescription({
    DateTime? lastDecreaseDateTime,
    DateTime? lastIncreaseDateTime,
    _i2.Int64? numberOfDecreasesToday,
    _i2.Int64? readCapacityUnits,
    _i2.Int64? writeCapacityUnits,
  }) {
    return _$ProvisionedThroughputDescription._(
      lastDecreaseDateTime: lastDecreaseDateTime,
      lastIncreaseDateTime: lastIncreaseDateTime,
      numberOfDecreasesToday: numberOfDecreasesToday,
      readCapacityUnits: readCapacityUnits,
      writeCapacityUnits: writeCapacityUnits,
    );
  }

  /// Represents the provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.
  factory ProvisionedThroughputDescription.build(
          [void Function(ProvisionedThroughputDescriptionBuilder) updates]) =
      _$ProvisionedThroughputDescription;

  const ProvisionedThroughputDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    ProvisionedThroughputDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionedThroughputDescriptionBuilder b) {}

  /// The date and time of the last provisioned throughput decrease for this table.
  DateTime? get lastDecreaseDateTime;

  /// The date and time of the last provisioned throughput increase for this table.
  DateTime? get lastIncreaseDateTime;

  /// The number of provisioned throughput decreases for this table during this UTC calendar day. For current maximums on provisioned throughput decreases, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  _i2.Int64? get numberOfDecreasesToday;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. Eventually consistent reads require less effort than strongly consistent reads, so a setting of 50 `ReadCapacityUnits` per second provides 100 eventually consistent `ReadCapacityUnits` per second.
  _i2.Int64? get readCapacityUnits;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`.
  _i2.Int64? get writeCapacityUnits;
  @override
  List<Object?> get props => [
        lastDecreaseDateTime,
        lastIncreaseDateTime,
        numberOfDecreasesToday,
        readCapacityUnits,
        writeCapacityUnits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ProvisionedThroughputDescription');
    helper.add(
      'lastDecreaseDateTime',
      lastDecreaseDateTime,
    );
    helper.add(
      'lastIncreaseDateTime',
      lastIncreaseDateTime,
    );
    helper.add(
      'numberOfDecreasesToday',
      numberOfDecreasesToday,
    );
    helper.add(
      'readCapacityUnits',
      readCapacityUnits,
    );
    helper.add(
      'writeCapacityUnits',
      writeCapacityUnits,
    );
    return helper.toString();
  }
}

class ProvisionedThroughputDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ProvisionedThroughputDescription> {
  const ProvisionedThroughputDescriptionAwsJson10Serializer()
      : super('ProvisionedThroughputDescription');

  @override
  Iterable<Type> get types => const [
        ProvisionedThroughputDescription,
        _$ProvisionedThroughputDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ProvisionedThroughputDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionedThroughputDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'LastDecreaseDateTime':
          if (value != null) {
            result.lastDecreaseDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastIncreaseDateTime':
          if (value != null) {
            result.lastIncreaseDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'NumberOfDecreasesToday':
          if (value != null) {
            result.numberOfDecreasesToday = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'ReadCapacityUnits':
          if (value != null) {
            result.readCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'WriteCapacityUnits':
          if (value != null) {
            result.writeCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
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
    final payload = (object as ProvisionedThroughputDescription);
    final result = <Object?>[];
    if (payload.lastDecreaseDateTime != null) {
      result
        ..add('LastDecreaseDateTime')
        ..add(serializers.serialize(
          payload.lastDecreaseDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastIncreaseDateTime != null) {
      result
        ..add('LastIncreaseDateTime')
        ..add(serializers.serialize(
          payload.lastIncreaseDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.numberOfDecreasesToday != null) {
      result
        ..add('NumberOfDecreasesToday')
        ..add(serializers.serialize(
          payload.numberOfDecreasesToday!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.readCapacityUnits != null) {
      result
        ..add('ReadCapacityUnits')
        ..add(serializers.serialize(
          payload.readCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.writeCapacityUnits != null) {
      result
        ..add('WriteCapacityUnits')
        ..add(serializers.serialize(
          payload.writeCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    return result;
  }
}
