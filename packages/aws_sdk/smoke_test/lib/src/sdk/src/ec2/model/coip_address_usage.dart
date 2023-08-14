// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.coip_address_usage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'coip_address_usage.g.dart';

/// Describes address usage for a customer-owned address pool.
abstract class CoipAddressUsage
    with _i1.AWSEquatable<CoipAddressUsage>
    implements Built<CoipAddressUsage, CoipAddressUsageBuilder> {
  /// Describes address usage for a customer-owned address pool.
  factory CoipAddressUsage({
    String? allocationId,
    String? awsAccountId,
    String? awsService,
    String? coIp,
  }) {
    return _$CoipAddressUsage._(
      allocationId: allocationId,
      awsAccountId: awsAccountId,
      awsService: awsService,
      coIp: coIp,
    );
  }

  /// Describes address usage for a customer-owned address pool.
  factory CoipAddressUsage.build(
      [void Function(CoipAddressUsageBuilder) updates]) = _$CoipAddressUsage;

  const CoipAddressUsage._();

  static const List<_i2.SmithySerializer<CoipAddressUsage>> serializers = [
    CoipAddressUsageEc2QuerySerializer()
  ];

  /// The allocation ID of the address.
  String? get allocationId;

  /// The Amazon Web Services account ID.
  String? get awsAccountId;

  /// The Amazon Web Services service.
  String? get awsService;

  /// The customer-owned IP address.
  String? get coIp;
  @override
  List<Object?> get props => [
        allocationId,
        awsAccountId,
        awsService,
        coIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CoipAddressUsage')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'awsAccountId',
        awsAccountId,
      )
      ..add(
        'awsService',
        awsService,
      )
      ..add(
        'coIp',
        coIp,
      );
    return helper.toString();
  }
}

class CoipAddressUsageEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CoipAddressUsage> {
  const CoipAddressUsageEc2QuerySerializer() : super('CoipAddressUsage');

  @override
  Iterable<Type> get types => const [
        CoipAddressUsage,
        _$CoipAddressUsage,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CoipAddressUsage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoipAddressUsageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'awsAccountId':
          result.awsAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'awsService':
          result.awsService = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coIp':
          result.coIp = (serializers.deserialize(
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
    CoipAddressUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CoipAddressUsageResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CoipAddressUsage(:allocationId, :awsAccountId, :awsService, :coIp) =
        object;
    if (allocationId != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsAccountId != null) {
      result$
        ..add(const _i2.XmlElementName('AwsAccountId'))
        ..add(serializers.serialize(
          awsAccountId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsService != null) {
      result$
        ..add(const _i2.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          awsService,
          specifiedType: const FullType(String),
        ));
    }
    if (coIp != null) {
      result$
        ..add(const _i2.XmlElementName('CoIp'))
        ..add(serializers.serialize(
          coIp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
