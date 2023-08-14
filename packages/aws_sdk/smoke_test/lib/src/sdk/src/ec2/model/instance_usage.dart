// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_usage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_usage.g.dart';

/// Information about the Capacity Reservation usage.
abstract class InstanceUsage
    with _i1.AWSEquatable<InstanceUsage>
    implements Built<InstanceUsage, InstanceUsageBuilder> {
  /// Information about the Capacity Reservation usage.
  factory InstanceUsage({
    String? accountId,
    int? usedInstanceCount,
  }) {
    usedInstanceCount ??= 0;
    return _$InstanceUsage._(
      accountId: accountId,
      usedInstanceCount: usedInstanceCount,
    );
  }

  /// Information about the Capacity Reservation usage.
  factory InstanceUsage.build([void Function(InstanceUsageBuilder) updates]) =
      _$InstanceUsage;

  const InstanceUsage._();

  static const List<_i2.SmithySerializer<InstanceUsage>> serializers = [
    InstanceUsageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceUsageBuilder b) {
    b.usedInstanceCount = 0;
  }

  /// The ID of the Amazon Web Services account that is making use of the Capacity Reservation.
  String? get accountId;

  /// The number of instances the Amazon Web Services account currently has in the Capacity Reservation.
  int get usedInstanceCount;
  @override
  List<Object?> get props => [
        accountId,
        usedInstanceCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceUsage')
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'usedInstanceCount',
        usedInstanceCount,
      );
    return helper.toString();
  }
}

class InstanceUsageEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceUsage> {
  const InstanceUsageEc2QuerySerializer() : super('InstanceUsage');

  @override
  Iterable<Type> get types => const [
        InstanceUsage,
        _$InstanceUsage,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceUsage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceUsageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usedInstanceCount':
          result.usedInstanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceUsageResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceUsage(:accountId, :usedInstanceCount) = object;
    if (accountId != null) {
      result$
        ..add(const _i2.XmlElementName('AccountId'))
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('UsedInstanceCount'))
      ..add(serializers.serialize(
        usedInstanceCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
