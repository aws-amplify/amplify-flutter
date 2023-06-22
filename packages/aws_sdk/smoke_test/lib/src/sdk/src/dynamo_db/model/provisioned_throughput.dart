// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.provisioned_throughput; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'provisioned_throughput.g.dart';

/// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
///
/// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
abstract class ProvisionedThroughput
    with _i1.AWSEquatable<ProvisionedThroughput>
    implements Built<ProvisionedThroughput, ProvisionedThroughputBuilder> {
  /// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  factory ProvisionedThroughput({
    _i2.Int64? readCapacityUnits,
    _i2.Int64? writeCapacityUnits,
  }) {
    readCapacityUnits ??= _i2.Int64.ZERO;
    writeCapacityUnits ??= _i2.Int64.ZERO;
    return _$ProvisionedThroughput._(
      readCapacityUnits: readCapacityUnits,
      writeCapacityUnits: writeCapacityUnits,
    );
  }

  /// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  factory ProvisionedThroughput.build(
          [void Function(ProvisionedThroughputBuilder) updates]) =
      _$ProvisionedThroughput;

  const ProvisionedThroughput._();

  static const List<_i3.SmithySerializer<ProvisionedThroughput>> serializers = [
    ProvisionedThroughputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionedThroughputBuilder b) {
    b.readCapacityUnits = _i2.Int64.ZERO;
    b.writeCapacityUnits = _i2.Int64.ZERO;
  }

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// If read/write capacity mode is `PAY\_PER\_REQUEST` the value is set to 0.
  _i2.Int64 get readCapacityUnits;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// If read/write capacity mode is `PAY\_PER\_REQUEST` the value is set to 0.
  _i2.Int64 get writeCapacityUnits;
  @override
  List<Object?> get props => [
        readCapacityUnits,
        writeCapacityUnits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionedThroughput')
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

class ProvisionedThroughputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ProvisionedThroughput> {
  const ProvisionedThroughputAwsJson10Serializer()
      : super('ProvisionedThroughput');

  @override
  Iterable<Type> get types => const [
        ProvisionedThroughput,
        _$ProvisionedThroughput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ProvisionedThroughput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionedThroughputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    ProvisionedThroughput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ProvisionedThroughput(:readCapacityUnits, :writeCapacityUnits) =
        object;
    result$.addAll([
      'ReadCapacityUnits',
      serializers.serialize(
        readCapacityUnits,
        specifiedType: const FullType(_i2.Int64),
      ),
      'WriteCapacityUnits',
      serializers.serialize(
        writeCapacityUnits,
        specifiedType: const FullType(_i2.Int64),
      ),
    ]);
    return result$;
  }
}
