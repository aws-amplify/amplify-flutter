// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.detach_network_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_network_interface_request.g.dart';

/// Contains the parameters for DetachNetworkInterface.
abstract class DetachNetworkInterfaceRequest
    with
        _i1.HttpInput<DetachNetworkInterfaceRequest>,
        _i2.AWSEquatable<DetachNetworkInterfaceRequest>
    implements
        Built<DetachNetworkInterfaceRequest,
            DetachNetworkInterfaceRequestBuilder> {
  /// Contains the parameters for DetachNetworkInterface.
  factory DetachNetworkInterfaceRequest({
    String? attachmentId,
    bool? dryRun,
    bool? force,
  }) {
    dryRun ??= false;
    force ??= false;
    return _$DetachNetworkInterfaceRequest._(
      attachmentId: attachmentId,
      dryRun: dryRun,
      force: force,
    );
  }

  /// Contains the parameters for DetachNetworkInterface.
  factory DetachNetworkInterfaceRequest.build(
          [void Function(DetachNetworkInterfaceRequestBuilder) updates]) =
      _$DetachNetworkInterfaceRequest;

  const DetachNetworkInterfaceRequest._();

  factory DetachNetworkInterfaceRequest.fromRequest(
    DetachNetworkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetachNetworkInterfaceRequest>>
      serializers = [DetachNetworkInterfaceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachNetworkInterfaceRequestBuilder b) {
    b
      ..dryRun = false
      ..force = false;
  }

  /// The ID of the attachment.
  String? get attachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specifies whether to force a detachment.
  ///
  /// *   Use the `Force` parameter only as a last resort to detach a network interface from a failed instance.
  ///
  /// *   If you use the `Force` parameter to detach a network interface, you might not be able to attach a different network interface to the same index on the instance without first stopping and starting the instance.
  ///
  /// *   If you force the detachment of a network interface, the [instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) might not get updated. This means that the attributes associated with the detached network interface might still be visible. The instance metadata will get updated when you stop and start the instance.
  bool get force;
  @override
  DetachNetworkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attachmentId,
        dryRun,
        force,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachNetworkInterfaceRequest')
      ..add(
        'attachmentId',
        attachmentId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'force',
        force,
      );
    return helper.toString();
  }
}

class DetachNetworkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DetachNetworkInterfaceRequest> {
  const DetachNetworkInterfaceRequestEc2QuerySerializer()
      : super('DetachNetworkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        DetachNetworkInterfaceRequest,
        _$DetachNetworkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachNetworkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachNetworkInterfaceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachmentId':
          result.attachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'force':
          result.force = (serializers.deserialize(
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
    DetachNetworkInterfaceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachNetworkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DetachNetworkInterfaceRequest(:attachmentId, :dryRun, :force) =
        object;
    if (attachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          attachmentId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        force,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
