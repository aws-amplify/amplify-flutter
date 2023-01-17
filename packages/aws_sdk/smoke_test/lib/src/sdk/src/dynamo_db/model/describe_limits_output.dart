// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_limits_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'describe_limits_output.g.dart';

/// Represents the output of a `DescribeLimits` operation.
abstract class DescribeLimitsOutput
    with _i1.AWSEquatable<DescribeLimitsOutput>
    implements Built<DescribeLimitsOutput, DescribeLimitsOutputBuilder> {
  /// Represents the output of a `DescribeLimits` operation.
  factory DescribeLimitsOutput({
    _i2.Int64? accountMaxReadCapacityUnits,
    _i2.Int64? accountMaxWriteCapacityUnits,
    _i2.Int64? tableMaxReadCapacityUnits,
    _i2.Int64? tableMaxWriteCapacityUnits,
  }) {
    return _$DescribeLimitsOutput._(
      accountMaxReadCapacityUnits: accountMaxReadCapacityUnits,
      accountMaxWriteCapacityUnits: accountMaxWriteCapacityUnits,
      tableMaxReadCapacityUnits: tableMaxReadCapacityUnits,
      tableMaxWriteCapacityUnits: tableMaxWriteCapacityUnits,
    );
  }

  /// Represents the output of a `DescribeLimits` operation.
  factory DescribeLimitsOutput.build(
          [void Function(DescribeLimitsOutputBuilder) updates]) =
      _$DescribeLimitsOutput;

  const DescribeLimitsOutput._();

  /// Constructs a [DescribeLimitsOutput] from a [payload] and [response].
  factory DescribeLimitsOutput.fromResponse(
    DescribeLimitsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DescribeLimitsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLimitsOutputBuilder b) {}

  /// The maximum total read capacity units that your account allows you to provision across all of your tables in this Region.
  _i2.Int64? get accountMaxReadCapacityUnits;

  /// The maximum total write capacity units that your account allows you to provision across all of your tables in this Region.
  _i2.Int64? get accountMaxWriteCapacityUnits;

  /// The maximum read capacity units that your account allows you to provision for a new table that you are creating in this Region, including the read capacity units provisioned for its global secondary indexes (GSIs).
  _i2.Int64? get tableMaxReadCapacityUnits;

  /// The maximum write capacity units that your account allows you to provision for a new table that you are creating in this Region, including the write capacity units provisioned for its global secondary indexes (GSIs).
  _i2.Int64? get tableMaxWriteCapacityUnits;
  @override
  List<Object?> get props => [
        accountMaxReadCapacityUnits,
        accountMaxWriteCapacityUnits,
        tableMaxReadCapacityUnits,
        tableMaxWriteCapacityUnits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLimitsOutput');
    helper.add(
      'accountMaxReadCapacityUnits',
      accountMaxReadCapacityUnits,
    );
    helper.add(
      'accountMaxWriteCapacityUnits',
      accountMaxWriteCapacityUnits,
    );
    helper.add(
      'tableMaxReadCapacityUnits',
      tableMaxReadCapacityUnits,
    );
    helper.add(
      'tableMaxWriteCapacityUnits',
      tableMaxWriteCapacityUnits,
    );
    return helper.toString();
  }
}

class DescribeLimitsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeLimitsOutput> {
  const DescribeLimitsOutputAwsJson10Serializer()
      : super('DescribeLimitsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeLimitsOutput,
        _$DescribeLimitsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeLimitsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLimitsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountMaxReadCapacityUnits':
          if (value != null) {
            result.accountMaxReadCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'AccountMaxWriteCapacityUnits':
          if (value != null) {
            result.accountMaxWriteCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'TableMaxReadCapacityUnits':
          if (value != null) {
            result.tableMaxReadCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'TableMaxWriteCapacityUnits':
          if (value != null) {
            result.tableMaxWriteCapacityUnits = (serializers.deserialize(
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
    final payload = (object as DescribeLimitsOutput);
    final result = <Object?>[];
    if (payload.accountMaxReadCapacityUnits != null) {
      result
        ..add('AccountMaxReadCapacityUnits')
        ..add(serializers.serialize(
          payload.accountMaxReadCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.accountMaxWriteCapacityUnits != null) {
      result
        ..add('AccountMaxWriteCapacityUnits')
        ..add(serializers.serialize(
          payload.accountMaxWriteCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.tableMaxReadCapacityUnits != null) {
      result
        ..add('TableMaxReadCapacityUnits')
        ..add(serializers.serialize(
          payload.tableMaxReadCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.tableMaxWriteCapacityUnits != null) {
      result
        ..add('TableMaxWriteCapacityUnits')
        ..add(serializers.serialize(
          payload.tableMaxWriteCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    return result;
  }
}
