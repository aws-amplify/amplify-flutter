// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_maintenance_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart';

part 'instance_maintenance_options_request.g.dart';

/// The maintenance options for the instance.
abstract class InstanceMaintenanceOptionsRequest
    with
        _i1.AWSEquatable<InstanceMaintenanceOptionsRequest>
    implements
        Built<InstanceMaintenanceOptionsRequest,
            InstanceMaintenanceOptionsRequestBuilder> {
  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptionsRequest(
      {InstanceAutoRecoveryState? autoRecovery}) {
    return _$InstanceMaintenanceOptionsRequest._(autoRecovery: autoRecovery);
  }

  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptionsRequest.build(
          [void Function(InstanceMaintenanceOptionsRequestBuilder) updates]) =
      _$InstanceMaintenanceOptionsRequest;

  const InstanceMaintenanceOptionsRequest._();

  static const List<_i2.SmithySerializer<InstanceMaintenanceOptionsRequest>>
      serializers = [InstanceMaintenanceOptionsRequestEc2QuerySerializer()];

  /// Disables the automatic recovery behavior of your instance or sets it to default. For more information, see [Simplified automatic recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).
  InstanceAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceMaintenanceOptionsRequest')
          ..add(
            'autoRecovery',
            autoRecovery,
          );
    return helper.toString();
  }
}

class InstanceMaintenanceOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceMaintenanceOptionsRequest> {
  const InstanceMaintenanceOptionsRequestEc2QuerySerializer()
      : super('InstanceMaintenanceOptionsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceMaintenanceOptionsRequest,
        _$InstanceMaintenanceOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMaintenanceOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMaintenanceOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AutoRecovery':
          result.autoRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceAutoRecoveryState),
          ) as InstanceAutoRecoveryState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceMaintenanceOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceMaintenanceOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceMaintenanceOptionsRequest(:autoRecovery) = object;
    if (autoRecovery != null) {
      result$
        ..add(const _i2.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          autoRecovery,
          specifiedType: const FullType(InstanceAutoRecoveryState),
        ));
    }
    return result$;
  }
}
