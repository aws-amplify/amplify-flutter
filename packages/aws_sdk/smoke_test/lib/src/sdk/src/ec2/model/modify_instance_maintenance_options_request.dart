// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_maintenance_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart';

part 'modify_instance_maintenance_options_request.g.dart';

abstract class ModifyInstanceMaintenanceOptionsRequest
    with
        _i1.HttpInput<ModifyInstanceMaintenanceOptionsRequest>,
        _i2.AWSEquatable<ModifyInstanceMaintenanceOptionsRequest>
    implements
        Built<ModifyInstanceMaintenanceOptionsRequest,
            ModifyInstanceMaintenanceOptionsRequestBuilder> {
  factory ModifyInstanceMaintenanceOptionsRequest({
    String? instanceId,
    InstanceAutoRecoveryState? autoRecovery,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceMaintenanceOptionsRequest._(
      instanceId: instanceId,
      autoRecovery: autoRecovery,
      dryRun: dryRun,
    );
  }

  factory ModifyInstanceMaintenanceOptionsRequest.build(
      [void Function(ModifyInstanceMaintenanceOptionsRequestBuilder)
          updates]) = _$ModifyInstanceMaintenanceOptionsRequest;

  const ModifyInstanceMaintenanceOptionsRequest._();

  factory ModifyInstanceMaintenanceOptionsRequest.fromRequest(
    ModifyInstanceMaintenanceOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyInstanceMaintenanceOptionsRequest>>
      serializers = [
    ModifyInstanceMaintenanceOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceMaintenanceOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the instance.
  String? get instanceId;

  /// Disables the automatic recovery behavior of your instance or sets it to default.
  InstanceAutoRecoveryState? get autoRecovery;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyInstanceMaintenanceOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        autoRecovery,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMaintenanceOptionsRequest')
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'autoRecovery',
            autoRecovery,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyInstanceMaintenanceOptionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceMaintenanceOptionsRequest> {
  const ModifyInstanceMaintenanceOptionsRequestEc2QuerySerializer()
      : super('ModifyInstanceMaintenanceOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMaintenanceOptionsRequest,
        _$ModifyInstanceMaintenanceOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMaintenanceOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMaintenanceOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AutoRecovery':
          result.autoRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceAutoRecoveryState),
          ) as InstanceAutoRecoveryState);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceMaintenanceOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceMaintenanceOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceMaintenanceOptionsRequest(
      :instanceId,
      :autoRecovery,
      :dryRun
    ) = object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (autoRecovery != null) {
      result$
        ..add(const _i1.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          autoRecovery,
          specifiedType: const FullType(InstanceAutoRecoveryState),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
