// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_fleet_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error.dart';

part 'delete_fleet_error_item.g.dart';

/// Describes an EC2 Fleet that was not successfully deleted.
abstract class DeleteFleetErrorItem
    with _i1.AWSEquatable<DeleteFleetErrorItem>
    implements Built<DeleteFleetErrorItem, DeleteFleetErrorItemBuilder> {
  /// Describes an EC2 Fleet that was not successfully deleted.
  factory DeleteFleetErrorItem({
    DeleteFleetError? error,
    String? fleetId,
  }) {
    return _$DeleteFleetErrorItem._(
      error: error,
      fleetId: fleetId,
    );
  }

  /// Describes an EC2 Fleet that was not successfully deleted.
  factory DeleteFleetErrorItem.build(
          [void Function(DeleteFleetErrorItemBuilder) updates]) =
      _$DeleteFleetErrorItem;

  const DeleteFleetErrorItem._();

  static const List<_i2.SmithySerializer<DeleteFleetErrorItem>> serializers = [
    DeleteFleetErrorItemEc2QuerySerializer()
  ];

  /// The error.
  DeleteFleetError? get error;

  /// The ID of the EC2 Fleet.
  String? get fleetId;
  @override
  List<Object?> get props => [
        error,
        fleetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetErrorItem')
      ..add(
        'error',
        error,
      )
      ..add(
        'fleetId',
        fleetId,
      );
    return helper.toString();
  }
}

class DeleteFleetErrorItemEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteFleetErrorItem> {
  const DeleteFleetErrorItemEc2QuerySerializer()
      : super('DeleteFleetErrorItem');

  @override
  Iterable<Type> get types => const [
        DeleteFleetErrorItem,
        _$DeleteFleetErrorItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DeleteFleetError),
          ) as DeleteFleetError));
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
    DeleteFleetErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteFleetErrorItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteFleetErrorItem(:error, :fleetId) = object;
    if (error != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(DeleteFleetError),
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
