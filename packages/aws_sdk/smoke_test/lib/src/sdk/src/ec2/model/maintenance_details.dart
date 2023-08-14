// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.maintenance_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'maintenance_details.g.dart';

/// Details for Site-to-Site VPN tunnel endpoint maintenance events.
abstract class MaintenanceDetails
    with _i1.AWSEquatable<MaintenanceDetails>
    implements Built<MaintenanceDetails, MaintenanceDetailsBuilder> {
  /// Details for Site-to-Site VPN tunnel endpoint maintenance events.
  factory MaintenanceDetails({
    String? pendingMaintenance,
    DateTime? maintenanceAutoAppliedAfter,
    DateTime? lastMaintenanceApplied,
  }) {
    return _$MaintenanceDetails._(
      pendingMaintenance: pendingMaintenance,
      maintenanceAutoAppliedAfter: maintenanceAutoAppliedAfter,
      lastMaintenanceApplied: lastMaintenanceApplied,
    );
  }

  /// Details for Site-to-Site VPN tunnel endpoint maintenance events.
  factory MaintenanceDetails.build(
          [void Function(MaintenanceDetailsBuilder) updates]) =
      _$MaintenanceDetails;

  const MaintenanceDetails._();

  static const List<_i2.SmithySerializer<MaintenanceDetails>> serializers = [
    MaintenanceDetailsEc2QuerySerializer()
  ];

  /// Verify existence of a pending maintenance.
  String? get pendingMaintenance;

  /// The timestamp after which Amazon Web Services will automatically apply maintenance.
  DateTime? get maintenanceAutoAppliedAfter;

  /// Timestamp of last applied maintenance.
  DateTime? get lastMaintenanceApplied;
  @override
  List<Object?> get props => [
        pendingMaintenance,
        maintenanceAutoAppliedAfter,
        lastMaintenanceApplied,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MaintenanceDetails')
      ..add(
        'pendingMaintenance',
        pendingMaintenance,
      )
      ..add(
        'maintenanceAutoAppliedAfter',
        maintenanceAutoAppliedAfter,
      )
      ..add(
        'lastMaintenanceApplied',
        lastMaintenanceApplied,
      );
    return helper.toString();
  }
}

class MaintenanceDetailsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MaintenanceDetails> {
  const MaintenanceDetailsEc2QuerySerializer() : super('MaintenanceDetails');

  @override
  Iterable<Type> get types => const [
        MaintenanceDetails,
        _$MaintenanceDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MaintenanceDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaintenanceDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'pendingMaintenance':
          result.pendingMaintenance = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maintenanceAutoAppliedAfter':
          result.maintenanceAutoAppliedAfter = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'lastMaintenanceApplied':
          result.lastMaintenanceApplied = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MaintenanceDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MaintenanceDetailsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MaintenanceDetails(
      :pendingMaintenance,
      :maintenanceAutoAppliedAfter,
      :lastMaintenanceApplied
    ) = object;
    if (pendingMaintenance != null) {
      result$
        ..add(const _i2.XmlElementName('PendingMaintenance'))
        ..add(serializers.serialize(
          pendingMaintenance,
          specifiedType: const FullType(String),
        ));
    }
    if (maintenanceAutoAppliedAfter != null) {
      result$
        ..add(const _i2.XmlElementName('MaintenanceAutoAppliedAfter'))
        ..add(serializers.serialize(
          maintenanceAutoAppliedAfter,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (lastMaintenanceApplied != null) {
      result$
        ..add(const _i2.XmlElementName('LastMaintenanceApplied'))
        ..add(serializers.serialize(
          lastMaintenanceApplied,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
