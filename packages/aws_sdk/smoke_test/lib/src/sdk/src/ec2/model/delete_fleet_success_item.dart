// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_fleet_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_state_code.dart';

part 'delete_fleet_success_item.g.dart';

/// Describes an EC2 Fleet that was successfully deleted.
abstract class DeleteFleetSuccessItem
    with _i1.AWSEquatable<DeleteFleetSuccessItem>
    implements Built<DeleteFleetSuccessItem, DeleteFleetSuccessItemBuilder> {
  /// Describes an EC2 Fleet that was successfully deleted.
  factory DeleteFleetSuccessItem({
    FleetStateCode? currentFleetState,
    FleetStateCode? previousFleetState,
    String? fleetId,
  }) {
    return _$DeleteFleetSuccessItem._(
      currentFleetState: currentFleetState,
      previousFleetState: previousFleetState,
      fleetId: fleetId,
    );
  }

  /// Describes an EC2 Fleet that was successfully deleted.
  factory DeleteFleetSuccessItem.build(
          [void Function(DeleteFleetSuccessItemBuilder) updates]) =
      _$DeleteFleetSuccessItem;

  const DeleteFleetSuccessItem._();

  static const List<_i2.SmithySerializer<DeleteFleetSuccessItem>> serializers =
      [DeleteFleetSuccessItemEc2QuerySerializer()];

  /// The current state of the EC2 Fleet.
  FleetStateCode? get currentFleetState;

  /// The previous state of the EC2 Fleet.
  FleetStateCode? get previousFleetState;

  /// The ID of the EC2 Fleet.
  String? get fleetId;
  @override
  List<Object?> get props => [
        currentFleetState,
        previousFleetState,
        fleetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetSuccessItem')
      ..add(
        'currentFleetState',
        currentFleetState,
      )
      ..add(
        'previousFleetState',
        previousFleetState,
      )
      ..add(
        'fleetId',
        fleetId,
      );
    return helper.toString();
  }
}

class DeleteFleetSuccessItemEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteFleetSuccessItem> {
  const DeleteFleetSuccessItemEc2QuerySerializer()
      : super('DeleteFleetSuccessItem');

  @override
  Iterable<Type> get types => const [
        DeleteFleetSuccessItem,
        _$DeleteFleetSuccessItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'currentFleetState':
          result.currentFleetState = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetStateCode),
          ) as FleetStateCode);
        case 'previousFleetState':
          result.previousFleetState = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetStateCode),
          ) as FleetStateCode);
        case 'fleetId':
          result.fleetId = (serializers.deserialize(
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
    DeleteFleetSuccessItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteFleetSuccessItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteFleetSuccessItem(
      :currentFleetState,
      :previousFleetState,
      :fleetId
    ) = object;
    if (currentFleetState != null) {
      result$
        ..add(const _i2.XmlElementName('CurrentFleetState'))
        ..add(serializers.serialize(
          currentFleetState,
          specifiedType: const FullType(FleetStateCode),
        ));
    }
    if (previousFleetState != null) {
      result$
        ..add(const _i2.XmlElementName('PreviousFleetState'))
        ..add(serializers.serialize(
          previousFleetState,
          specifiedType: const FullType(FleetStateCode),
        ));
    }
    if (fleetId != null) {
      result$
        ..add(const _i2.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          fleetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
