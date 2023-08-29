// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_attachment_changes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_interface_attachment_changes.g.dart';

/// Describes an attachment change.
abstract class NetworkInterfaceAttachmentChanges
    with
        _i1.AWSEquatable<NetworkInterfaceAttachmentChanges>
    implements
        Built<NetworkInterfaceAttachmentChanges,
            NetworkInterfaceAttachmentChangesBuilder> {
  /// Describes an attachment change.
  factory NetworkInterfaceAttachmentChanges({
    String? attachmentId,
    bool? deleteOnTermination,
  }) {
    deleteOnTermination ??= false;
    return _$NetworkInterfaceAttachmentChanges._(
      attachmentId: attachmentId,
      deleteOnTermination: deleteOnTermination,
    );
  }

  /// Describes an attachment change.
  factory NetworkInterfaceAttachmentChanges.build(
          [void Function(NetworkInterfaceAttachmentChangesBuilder) updates]) =
      _$NetworkInterfaceAttachmentChanges;

  const NetworkInterfaceAttachmentChanges._();

  static const List<_i2.SmithySerializer<NetworkInterfaceAttachmentChanges>>
      serializers = [NetworkInterfaceAttachmentChangesEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceAttachmentChangesBuilder b) {
    b.deleteOnTermination = false;
  }

  /// The ID of the network interface attachment.
  String? get attachmentId;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;
  @override
  List<Object?> get props => [
        attachmentId,
        deleteOnTermination,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInterfaceAttachmentChanges')
          ..add(
            'attachmentId',
            attachmentId,
          )
          ..add(
            'deleteOnTermination',
            deleteOnTermination,
          );
    return helper.toString();
  }
}

class NetworkInterfaceAttachmentChangesEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfaceAttachmentChanges> {
  const NetworkInterfaceAttachmentChangesEc2QuerySerializer()
      : super('NetworkInterfaceAttachmentChanges');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceAttachmentChanges,
        _$NetworkInterfaceAttachmentChanges,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceAttachmentChanges deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceAttachmentChangesBuilder();
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
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
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
    NetworkInterfaceAttachmentChanges object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfaceAttachmentChangesResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfaceAttachmentChanges(
      :attachmentId,
      :deleteOnTermination
    ) = object;
    if (attachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          attachmentId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
