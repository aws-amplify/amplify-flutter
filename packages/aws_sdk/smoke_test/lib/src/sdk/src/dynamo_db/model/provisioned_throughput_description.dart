// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    DateTime? lastIncreaseDateTime,
    DateTime? lastDecreaseDateTime,
    _i2.Int64? numberOfDecreasesToday,
    _i2.Int64? readCapacityUnits,
    _i2.Int64? writeCapacityUnits,
  }) {
    return _$ProvisionedThroughputDescription._(
      lastIncreaseDateTime: lastIncreaseDateTime,
      lastDecreaseDateTime: lastDecreaseDateTime,
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

  static const List<_i3.SmithySerializer<ProvisionedThroughputDescription>>
      serializers = [ProvisionedThroughputDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionedThroughputDescriptionBuilder b) {}

  /// The date and time of the last provisioned throughput increase for this table.
  DateTime? get lastIncreaseDateTime;

  /// The date and time of the last provisioned throughput decrease for this table.
  DateTime? get lastDecreaseDateTime;

  /// The number of provisioned throughput decreases for this table during this UTC calendar day. For current maximums on provisioned throughput decreases, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  _i2.Int64? get numberOfDecreasesToday;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. Eventually consistent reads require less effort than strongly consistent reads, so a setting of 50 `ReadCapacityUnits` per second provides 100 eventually consistent `ReadCapacityUnits` per second.
  _i2.Int64? get readCapacityUnits;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`.
  _i2.Int64? get writeCapacityUnits;
  @override
  List<Object?> get props => [
        lastIncreaseDateTime,
        lastDecreaseDateTime,
        numberOfDecreasesToday,
        readCapacityUnits,
        writeCapacityUnits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ProvisionedThroughputDescription')
          ..add(
            'lastIncreaseDateTime',
            lastIncreaseDateTime,
          )
          ..add(
            'lastDecreaseDateTime',
            lastDecreaseDateTime,
          )
          ..add(
            'numberOfDecreasesToday',
            numberOfDecreasesToday,
          )
          ..add(
            'readCapacityUnits',
            readCapacityUnits,
          )
          ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LastIncreaseDateTime':
          result.lastIncreaseDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastDecreaseDateTime':
          result.lastDecreaseDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'NumberOfDecreasesToday':
          result.numberOfDecreasesToday = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'ReadCapacityUnits':
          result.readCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'WriteCapacityUnits':
          result.writeCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProvisionedThroughputDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ProvisionedThroughputDescription(
      :lastIncreaseDateTime,
      :lastDecreaseDateTime,
      :numberOfDecreasesToday,
      :readCapacityUnits,
      :writeCapacityUnits
    ) = object;
    if (lastIncreaseDateTime != null) {
      result$
        ..add('LastIncreaseDateTime')
        ..add(serializers.serialize(
          lastIncreaseDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastDecreaseDateTime != null) {
      result$
        ..add('LastDecreaseDateTime')
        ..add(serializers.serialize(
          lastDecreaseDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (numberOfDecreasesToday != null) {
      result$
        ..add('NumberOfDecreasesToday')
        ..add(serializers.serialize(
          numberOfDecreasesToday,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (readCapacityUnits != null) {
      result$
        ..add('ReadCapacityUnits')
        ..add(serializers.serialize(
          readCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (writeCapacityUnits != null) {
      result$
        ..add('WriteCapacityUnits')
        ..add(serializers.serialize(
          writeCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    return result$;
  }
}
