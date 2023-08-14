// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.state_reason; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'state_reason.g.dart';

/// Describes a state change.
abstract class StateReason
    with _i1.AWSEquatable<StateReason>
    implements Built<StateReason, StateReasonBuilder> {
  /// Describes a state change.
  factory StateReason({
    String? code,
    String? message,
  }) {
    return _$StateReason._(
      code: code,
      message: message,
    );
  }

  /// Describes a state change.
  factory StateReason.build([void Function(StateReasonBuilder) updates]) =
      _$StateReason;

  const StateReason._();

  static const List<_i2.SmithySerializer<StateReason>> serializers = [
    StateReasonEc2QuerySerializer()
  ];

  /// The reason code for the state change.
  String? get code;

  /// The message for the state change.
  ///
  /// *   `Server.InsufficientInstanceCapacity`: There was insufficient capacity available to satisfy the launch request.
  ///
  /// *   `Server.InternalError`: An internal error caused the instance to terminate during launch.
  ///
  /// *   `Server.ScheduledStop`: The instance was stopped due to a scheduled retirement.
  ///
  /// *   `Server.SpotInstanceShutdown`: The instance was stopped because the number of Spot requests with a maximum price equal to or higher than the Spot price exceeded available capacity or because of an increase in the Spot price.
  ///
  /// *   `Server.SpotInstanceTermination`: The instance was terminated because the number of Spot requests with a maximum price equal to or higher than the Spot price exceeded available capacity or because of an increase in the Spot price.
  ///
  /// *   `Client.InstanceInitiatedShutdown`: The instance was shut down using the `shutdown -h` command from the instance.
  ///
  /// *   `Client.InstanceTerminated`: The instance was terminated or rebooted during AMI creation.
  ///
  /// *   `Client.InternalError`: A client error caused the instance to terminate during launch.
  ///
  /// *   `Client.InvalidSnapshot.NotFound`: The specified snapshot was not found.
  ///
  /// *   `Client.UserInitiatedHibernate`: Hibernation was initiated on the instance.
  ///
  /// *   `Client.UserInitiatedShutdown`: The instance was shut down using the Amazon EC2 API.
  ///
  /// *   `Client.VolumeLimitExceeded`: The limit on the number of EBS volumes or total storage was exceeded. Decrease usage or request an increase in your account limits.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StateReason')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class StateReasonEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<StateReason> {
  const StateReasonEc2QuerySerializer() : super('StateReason');

  @override
  Iterable<Type> get types => const [
        StateReason,
        _$StateReason,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StateReason deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StateReasonBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
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
    StateReason object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StateReasonResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StateReason(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
