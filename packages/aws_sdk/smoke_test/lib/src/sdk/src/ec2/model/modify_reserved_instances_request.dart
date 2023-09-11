// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_reserved_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_configuration.dart';

part 'modify_reserved_instances_request.g.dart';

/// Contains the parameters for ModifyReservedInstances.
abstract class ModifyReservedInstancesRequest
    with
        _i1.HttpInput<ModifyReservedInstancesRequest>,
        _i2.AWSEquatable<ModifyReservedInstancesRequest>
    implements
        Built<ModifyReservedInstancesRequest,
            ModifyReservedInstancesRequestBuilder> {
  /// Contains the parameters for ModifyReservedInstances.
  factory ModifyReservedInstancesRequest({
    List<String>? reservedInstancesIds,
    String? clientToken,
    List<ReservedInstancesConfiguration>? targetConfigurations,
  }) {
    return _$ModifyReservedInstancesRequest._(
      reservedInstancesIds: reservedInstancesIds == null
          ? null
          : _i3.BuiltList(reservedInstancesIds),
      clientToken: clientToken,
      targetConfigurations: targetConfigurations == null
          ? null
          : _i3.BuiltList(targetConfigurations),
    );
  }

  /// Contains the parameters for ModifyReservedInstances.
  factory ModifyReservedInstancesRequest.build(
          [void Function(ModifyReservedInstancesRequestBuilder) updates]) =
      _$ModifyReservedInstancesRequest;

  const ModifyReservedInstancesRequest._();

  factory ModifyReservedInstancesRequest.fromRequest(
    ModifyReservedInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyReservedInstancesRequest>>
      serializers = [ModifyReservedInstancesRequestEc2QuerySerializer()];

  /// The IDs of the Reserved Instances to modify.
  _i3.BuiltList<String>? get reservedInstancesIds;

  /// A unique, case-sensitive token you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The configuration settings for the Reserved Instances to modify.
  _i3.BuiltList<ReservedInstancesConfiguration>? get targetConfigurations;
  @override
  ModifyReservedInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        reservedInstancesIds,
        clientToken,
        targetConfigurations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyReservedInstancesRequest')
      ..add(
        'reservedInstancesIds',
        reservedInstancesIds,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'targetConfigurations',
        targetConfigurations,
      );
    return helper.toString();
  }
}

class ModifyReservedInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyReservedInstancesRequest> {
  const ModifyReservedInstancesRequestEc2QuerySerializer()
      : super('ModifyReservedInstancesRequest');

  @override
  Iterable<Type> get types => const [
        ModifyReservedInstancesRequest,
        _$ModifyReservedInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyReservedInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyReservedInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ReservedInstancesId':
          result.reservedInstancesIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ReservedInstancesId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReservedInstancesConfigurationSetItemType':
          result.targetConfigurations.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ReservedInstancesConfiguration)],
            ),
          ) as _i3.BuiltList<ReservedInstancesConfiguration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyReservedInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyReservedInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyReservedInstancesRequest(
      :reservedInstancesIds,
      :clientToken,
      :targetConfigurations
    ) = object;
    if (reservedInstancesIds != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ReservedInstancesId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (targetConfigurations != null) {
      result$
        ..add(const _i1.XmlElementName(
            'ReservedInstancesConfigurationSetItemType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          targetConfigurations,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ReservedInstancesConfiguration)],
          ),
        ));
    }
    return result$;
  }
}
