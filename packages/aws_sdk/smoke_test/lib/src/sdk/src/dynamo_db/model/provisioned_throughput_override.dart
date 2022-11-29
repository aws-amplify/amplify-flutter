// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.provisioned_throughput_override; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'provisioned_throughput_override.g.dart';

/// Replica-specific provisioned throughput settings. If not specified, uses the source table's provisioned throughput settings.
abstract class ProvisionedThroughputOverride
    with
        _i1.AWSEquatable<ProvisionedThroughputOverride>
    implements
        Built<ProvisionedThroughputOverride,
            ProvisionedThroughputOverrideBuilder> {
  /// Replica-specific provisioned throughput settings. If not specified, uses the source table's provisioned throughput settings.
  factory ProvisionedThroughputOverride({_i2.Int64? readCapacityUnits}) {
    return _$ProvisionedThroughputOverride._(
        readCapacityUnits: readCapacityUnits);
  }

  /// Replica-specific provisioned throughput settings. If not specified, uses the source table's provisioned throughput settings.
  factory ProvisionedThroughputOverride.build(
          [void Function(ProvisionedThroughputOverrideBuilder) updates]) =
      _$ProvisionedThroughputOverride;

  const ProvisionedThroughputOverride._();

  static const List<_i3.SmithySerializer> serializers = [
    ProvisionedThroughputOverrideAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionedThroughputOverrideBuilder b) {}

  /// Replica-specific read capacity units. If not specified, uses the source table's read capacity settings.
  _i2.Int64? get readCapacityUnits;
  @override
  List<Object?> get props => [readCapacityUnits];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionedThroughputOverride');
    helper.add(
      'readCapacityUnits',
      readCapacityUnits,
    );
    return helper.toString();
  }
}

class ProvisionedThroughputOverrideAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ProvisionedThroughputOverride> {
  const ProvisionedThroughputOverrideAwsJson10Serializer()
      : super('ProvisionedThroughputOverride');

  @override
  Iterable<Type> get types => const [
        ProvisionedThroughputOverride,
        _$ProvisionedThroughputOverride,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ProvisionedThroughputOverride deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionedThroughputOverrideBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ReadCapacityUnits':
          if (value != null) {
            result.readCapacityUnits = (serializers.deserialize(
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
    final payload = (object as ProvisionedThroughputOverride);
    final result = <Object?>[];
    if (payload.readCapacityUnits != null) {
      result
        ..add('ReadCapacityUnits')
        ..add(serializers.serialize(
          payload.readCapacityUnits!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    return result;
  }
}
