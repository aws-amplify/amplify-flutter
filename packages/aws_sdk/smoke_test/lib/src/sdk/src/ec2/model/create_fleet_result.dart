// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_fleet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_instance.dart';

part 'create_fleet_result.g.dart';

abstract class CreateFleetResult
    with _i1.AWSEquatable<CreateFleetResult>
    implements Built<CreateFleetResult, CreateFleetResultBuilder> {
  factory CreateFleetResult({
    String? fleetId,
    List<CreateFleetError>? errors,
    List<CreateFleetInstance>? instances,
  }) {
    return _$CreateFleetResult._(
      fleetId: fleetId,
      errors: errors == null ? null : _i2.BuiltList(errors),
      instances: instances == null ? null : _i2.BuiltList(instances),
    );
  }

  factory CreateFleetResult.build(
      [void Function(CreateFleetResultBuilder) updates]) = _$CreateFleetResult;

  const CreateFleetResult._();

  /// Constructs a [CreateFleetResult] from a [payload] and [response].
  factory CreateFleetResult.fromResponse(
    CreateFleetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateFleetResult>> serializers = [
    CreateFleetResultEc2QuerySerializer()
  ];

  /// The ID of the EC2 Fleet.
  String? get fleetId;

  /// Information about the instances that could not be launched by the fleet. Supported only for fleets of type `instant`.
  _i2.BuiltList<CreateFleetError>? get errors;

  /// Information about the instances that were launched by the fleet. Supported only for fleets of type `instant`.
  _i2.BuiltList<CreateFleetInstance>? get instances;
  @override
  List<Object?> get props => [
        fleetId,
        errors,
        instances,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFleetResult')
      ..add(
        'fleetId',
        fleetId,
      )
      ..add(
        'errors',
        errors,
      )
      ..add(
        'instances',
        instances,
      );
    return helper.toString();
  }
}

class CreateFleetResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateFleetResult> {
  const CreateFleetResultEc2QuerySerializer() : super('CreateFleetResult');

  @override
  Iterable<Type> get types => const [
        CreateFleetResult,
        _$CreateFleetResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFleetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFleetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fleetId':
          result.fleetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'errorSet':
          result.errors.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CreateFleetError)],
            ),
          ) as _i2.BuiltList<CreateFleetError>));
        case 'fleetInstanceSet':
          result.instances.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CreateFleetInstance)],
            ),
          ) as _i2.BuiltList<CreateFleetInstance>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateFleetResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateFleetResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateFleetResult(:fleetId, :errors, :instances) = object;
    if (fleetId != null) {
      result$
        ..add(const _i3.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          fleetId,
          specifiedType: const FullType(String),
        ));
    }
    if (errors != null) {
      result$
        ..add(const _i3.XmlElementName('ErrorSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          errors,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CreateFleetError)],
          ),
        ));
    }
    if (instances != null) {
      result$
        ..add(const _i3.XmlElementName('FleetInstanceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instances,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CreateFleetInstance)],
          ),
        ));
    }
    return result$;
  }
}
